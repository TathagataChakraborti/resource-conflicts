import sys, os

def find_conflicts(robotPlan, humanPlan):
        
        medkits = ['MK1','MK2']
        for mk in medkits:
                flag_R = False
                flag_h = False
                flag   = False
                for step in range(min(len(robotPlan),len(humanPlan))):
                        robot_action = robotPlan(action) 
                        human_action = humanPlan(action)
                        
                        if 'pick_up' in robot_action and mk in robot_action:
                                flag_R = True
                        elif 'drop_off' in robot_action and mk in robot_action:
                                flag_R = False

                        if 'pick_up' in human_action and mk in  human_action:
                                flag_H = True
                        elif 'drop_off' in  human_action and mk in  human_action:
                                flag_H = False

                        flag = flag_R and flag_H
                        if flag:
                                return flag
        return flag



if __name__ == '__main__' :
        
        robot_domain   = 'strawman/robot-domain.pddl'
        robot_problem  = 'strawman/robot-problem.pddl'

        cmd = '~/FASTDOWNWARD/src/translate/translate.py ' + str(robot_domain) + ' ' + str(robot_problem)
        os.system(cmd) 
        cmd = '~/FASTDOWNWARD/src/preprocess/preprocess < output.sas'
        os.system(cmd) 
        cmd = '~/FASTDOWNWARD/src/fast-downward.py --plan-file robot_plan.dat output --search "astar(lmcut())"'
        os.system(cmd) 

        human_domain   = 'strawman/human-domain.pddl'
        human_problem  = 'strawman/human-problem.pddl'

        cmd = '~/FASTDOWNWARD/src/translate/translate.py ' + str(human_domain) + ' ' + str(human_problem)
        os.system(cmd) 
        cmd = '~/FASTDOWNWARD/src/preprocess/preprocess < output.sas'
        os.system(cmd) 
        cmd = '~/FASTDOWNWARD/src/fast-downward.py --plan-file human_plan.dat output --search "astar(lmcut())"'
        os.system(cmd) 

        with open('robot_plan.dat','r') as robotPlanFile:
                robotPlan = file.read().split('cost')[0].strip().split('\n')

        with open('human_plan.dat','r') as humanPlanFile:
                humanPlan = file.read().split('cost')[0].strip().split('\n')
                
        
        if find_conflicts(robotPlan, humanPlan):
                count += 1

