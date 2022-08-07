#Q1

# 1st approach
X = factor(c('Army', 'Army', 'Army', 'Army', 'Nurse', 'Nurse', 'Nurse', 'Nurse',
     'Physician', 'Physician', 'Physician', 'Physician',
     'Police', 'Police', 'Police', 'Police'))

# 2nd approach
gl(4, 4, labels=c('Army', 'Nurse', 'Physician', 'Police'))
