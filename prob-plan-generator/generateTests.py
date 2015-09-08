import sys, os, random

from itertools import chain, combinations
def all_subsets(ss):
  listy = []
  for idx in range(1,len(ss)):
    temp = combinations(ss,idx)
    temp = [tt for tt in temp]
    temp = random.sample(temp, len(ss))
    for tt in temp:
      listy.append(tt)
  #listy.append(tuple(ss))
  return listy


rooms = ['room1','room2','room3','room4','room5','hall1','hall2','hall3','hall4','hall5']

for subset in all_subsets(rooms):
  if len(subset) > 1:
    print subset

cmd = 'cd test_dom1/ && rm -r *tar*'
os.system(cmd)

count = 0
for pnum in range(1,6):
  for subset in all_subsets(rooms):
    count += 1
    cc = str(count)
    if len(cc) == 1:
      cc = '000'+cc
    elif len(cc) == 2:
      cc = '00'+cc 
    elif len(cc) == 3:
      cc = '0'+cc 

    hyps = ''
    real_hyp = ''
    if len(subset) > 1:
      print 'size of subset = ', len(subset), 'pnum - ', str(pnum)
      idx = random.randint(0,len(subset)-1)
      for i in range(len(subset)):
        hyps += '(conducted_triage human ' + subset[i] + '),'
        hyps += '(not (has_medkit human))\n'
        if i == idx:
          real_hyp = '(conducted_triage human ' + subset[i] + '),(not (has_medkit human))'
    
      f = open('test_dom1/hyps.dat','w')
      f.write(hyps)
      f.close()

      f = open('test_dom1/real_hyp.dat','w')
      f.write(real_hyp)
      f.close()
      
      with open('test_dom1/template.pddl', 'r') as input_file, open('test_dom1/problem'+str(pnum)+'.pddl', 'w') as output_file:
        for line in input_file:
          if line.strip() == '<HYPOTHESIS>':
            output_file.write(real_hyp.replace(',','\n') + '\n')
          else:
            output_file.write(line)
          
      domainFile = 'test_dom1/domain.pddl'
      problemFile = 'test_dom1/problem'+str(pnum)+'.pddl'

      cmd = '~/Desktop/FAST-DOWNWARD/src/translate/translate.py ' + str(domainFile) + ' ' + str(problemFile) + '> stdout.txt'
      os.system(cmd) 
      cmd = '~/Desktop/FAST-DOWNWARD/src/preprocess/preprocess < output.sas > stdout.txt'
      os.system(cmd) 
      cmd = '~/Desktop/FAST-DOWNWARD/src/fast-downward.py output --search "astar(lmcut())" > stdout.txt'
      os.system(cmd) 
    
      f = open('sas_plan','r')
      full_plan = f.read()
      f.close()

      f = open('test_dom1/obs.dat','w')
      f.close()
      steps = full_plan.split('\n')
      for ii in range(min(5,len(steps)-2)):
        f = open('test_dom1/obs.dat','a')
        f.write(str(steps[ii]) +'\n')
        f.close()
        cmd = 'cd test_dom1/ && tar -jcvf test_' + cc + '_' + str(len(subset)) + '_' +  str(ii+1) + '.tar.bz2 obs.dat hyps.dat real_hyp.dat domain.pddl template.pddl > stdout.txt'
        os.system(cmd)

