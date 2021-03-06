#!/usr/bin/python
import sys, os, ast, copy, numpy, glob
import globalVAR, readFiles, resource_plan

def run_on_one_instance(fileName):

        print fileName
	human_file = fileName

        cmd = 'tar -jxvf ' + human_file + ' -C ./ > stdout.txt'
        os.system(cmd)

	cmd = 'mono PIPSS.exe -d domain.pddl -p template.pddl -i 0 | grep Ranking > flag.txt'
        os.system(cmd)

        hyps = []
	instream = open('hyps.dat','r')
        for line in instream:
                hyps.append(line.split(','))
        instream.close()

        instream = open('flag.txt','r')
        curr = ast.literal_eval('[' + instream.read().split('=')[1].strip().replace(' ',',') + ']')
        instream.close()
        curr = [float(i)/sum(curr) for i in curr]

        T = 25
        num_kits = 2
        medkits = ['MK1','MK2','MK3','MK4','MK5']
        medkits = medkits[0:num_kits]
        mk_groundings = ['AT_?_ROOM1','AT_?_ROOM2','AT_?_ROOM3','AT_?_ROOM4','AT_?_ROOM5','AT_?_ROOM6','AT_?_ROOM7','AT_?_HALL1','AT_?_HALL2','AT_?_HALL3','AT_?_HALL4','AT_?_HALL5']

        globalVAR.resource_profiles_use = {}
        globalVAR.resource_profiles_grnd = {}
        for mk in medkits:
                globalVAR.resource_profiles_use[mk,'IN_USE'] = numpy.zeros(T+1)
                for grnd in mk_groundings:
                        tt = grnd.replace('?',mk)
                        globalVAR.resource_profiles_grnd[tt] = numpy.zeros(T+1)
                        
        for idx in range(len(hyps)):
                goal    = hyps[idx]
                tempProblem = ''
                with open('template.pddl', 'r') as problemFile:
                        for line in problemFile:
                                if 'HYPOTHESIS' in line:
                                        for gg in goal:
                                                tempProblem += gg + '\n'
                                else:
                                        tempProblem += line

                with open('problem.pddl', 'w') as problemFile:
                        problemFile.write(tempProblem)
                
                cmd = './pr2plan -d domain.pddl -i problem.pddl -o obs.dat > stdout.txt'
                os.system(cmd)
                
                domainFile   = 'pr-domain.pddl'
                problemFile  = 'pr-problem.pddl'
                readFiles.read_input(domainFile, problemFile,'human') 
                
                cmd = '~/Desktop/FAST-DOWNWARD/src/translate/translate.py ' + str(domainFile) + ' ' + str(problemFile) + '> stdout.txt'
                os.system(cmd) 
                cmd = '~/Desktop/FAST-DOWNWARD/src/preprocess/preprocess < output.sas > stdout.txt'
                os.system(cmd) 
                cmd = '~/Desktop/FAST-DOWNWARD/src/fast-downward.py --plan-file plan_' + str(idx) + '.dat output --search "astar(lmcut())" > stdout.txt'
                os.system(cmd) 
                planFile = 'plan_' + str(idx) + '.dat'
                instream = open(planFile, 'r')
                current_plan = []
                while True:
                        line = instream.readline().strip()
                        if 'cost' in line:
                                break
                        nextAction = line[line.find('(')+1:line.find(')')].strip().replace(' ','_').upper()
                        current_plan.append(nextAction)

                temp_profiles_use = {}
                temp_profiles_grnd = {}
                for mk in medkits:

                        temp_profiles_use[mk] = numpy.zeros(T+1)
                        for grnd in mk_groundings:
                                tt = grnd.replace('?',mk)
                                temp_profiles_grnd[tt] = numpy.zeros(T+1)
                                temp_profiles_grnd[tt][0] = globalVAR.initState_human[globalVAR.listOfPredicates_human.index(tt)]*curr[idx]
                                
                        flag = 0
                        for action in current_plan:
                                step = current_plan.index(action)
                                if 'PICK_UP' in action and mk in action:
                                        flag = 1
                                if 'DROP_OFF' in action and mk in action:
                                        flag = 0
                                temp_profiles_use[mk][step] = flag*curr[idx]
                                
                                for grnd in mk_groundings:
                                        tt = grnd.replace('?',mk)
                                        temp_profiles_grnd[tt][step+1] = temp_profiles_grnd[tt][step]
                                
                                if flag == 1:

                                        if 'MOVE' in action:
                                                ext = ''
                                                if 'OBS' in action:
                                                        ext = action.split('_')[-2]
                                                else:
                                                        ext = action.split('_')[-1]
                                                ext = 'AT_' + mk + '_' + ext

                                                for grnd in mk_groundings:
                                                        tt = grnd.replace('?',mk)
                                                        temp_profiles_grnd[tt][step+1] = 0
                                                temp_profiles_grnd[ext][step+1] = flag*curr[idx]

                        for step in range(len(current_plan),T+1):
                                temp_profiles_use[mk][step] = temp_profiles_use[mk][step-1]
                                for grnd in mk_groundings:
                                        tt = grnd.replace('?',mk)
                                        temp_profiles_grnd[tt][step] = temp_profiles_grnd[tt][step-1]
                                                
                for step in range(T+1):
                        for mk in medkits:
                                globalVAR.resource_profiles_use[mk,'IN_USE'][step] += temp_profiles_use[mk][step]
                                for grnd in mk_groundings:
                                        tt = grnd.replace('?',mk)
                                        globalVAR.resource_profiles_grnd[tt][step] += temp_profiles_grnd[tt][step]
                

        domainFile  = 'robot/pr-domain.pddl'
        problemFile = 'robot/pr-problem.pddl'

        time = [10, 13, 16]
        for tt in time:
                try:
                        plan = resource_plan.run_ip(domainFile, problemFile, tt, num_kits)
                        with open('plans/'+human_file.split('/')[2].split('.')[0]+'_'+str(tt)+'_plan.dat','w') as plan_file:
                                plan_file.write(plan)
                except:
                        print 'Optimization was stopped with status 666'

if __name__ == '__main__' :

        try:
                if sys.argv[1] == '1':
                        file = 'prob-plan-generator/test_dom1/test_013_2_1.tar.bz2'
                        run_on_one_instance(file)

        except:
                count = 0
                fileList = sorted(glob.glob('prob-plan-generator/test_dom1/*test*.tar.bz2*'))
                
                for fileName in fileList:
                        
                        count += 1
                        try:
                                run_on_one_instance(fileName)
                        except: 
                                pass
                                
                        if count == 50:
                                break
