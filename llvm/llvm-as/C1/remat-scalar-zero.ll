









define void @foo(double* nocapture %x, double* nocapture %y) nounwind {
entry:
  %tmp1 = load double, double* %x                         
  %arrayidx4 = getelementptr inbounds double, double* %x, i64 1 
  %tmp5 = load double, double* %arrayidx4                 
  %arrayidx8 = getelementptr inbounds double, double* %x, i64 2 
  %tmp9 = load double, double* %arrayidx8                 
  %arrayidx12 = getelementptr inbounds double, double* %x, i64 3 
  %tmp13 = load double, double* %arrayidx12               
  %arrayidx16 = getelementptr inbounds double, double* %x, i64 4 
  %tmp17 = load double, double* %arrayidx16               
  %arrayidx20 = getelementptr inbounds double, double* %x, i64 5 
  %tmp21 = load double, double* %arrayidx20               
  %arrayidx24 = getelementptr inbounds double, double* %x, i64 6 
  %tmp25 = load double, double* %arrayidx24               
  %arrayidx28 = getelementptr inbounds double, double* %x, i64 7 
  %tmp29 = load double, double* %arrayidx28               
  %arrayidx32 = getelementptr inbounds double, double* %x, i64 8 
  %tmp33 = load double, double* %arrayidx32               
  %arrayidx36 = getelementptr inbounds double, double* %x, i64 9 
  %tmp37 = load double, double* %arrayidx36               
  %arrayidx40 = getelementptr inbounds double, double* %x, i64 10 
  %tmp41 = load double, double* %arrayidx40               
  %arrayidx44 = getelementptr inbounds double, double* %x, i64 11 
  %tmp45 = load double, double* %arrayidx44               
  %arrayidx48 = getelementptr inbounds double, double* %x, i64 12 
  %tmp49 = load double, double* %arrayidx48               
  %arrayidx52 = getelementptr inbounds double, double* %x, i64 13 
  %tmp53 = load double, double* %arrayidx52               
  %arrayidx56 = getelementptr inbounds double, double* %x, i64 14 
  %tmp57 = load double, double* %arrayidx56               
  %arrayidx60 = getelementptr inbounds double, double* %x, i64 15 
  %tmp61 = load double, double* %arrayidx60               
  %arrayidx64 = getelementptr inbounds double, double* %x, i64 16 
  %tmp65 = load double, double* %arrayidx64               
  %div = fdiv double %tmp1, 0.000000e+00          
  store double %div, double* %y
  %div70 = fdiv double %tmp5, 2.000000e-01        
  %arrayidx72 = getelementptr inbounds double, double* %y, i64 1 
  store double %div70, double* %arrayidx72
  %div74 = fdiv double %tmp9, 2.000000e-01        
  %arrayidx76 = getelementptr inbounds double, double* %y, i64 2 
  store double %div74, double* %arrayidx76
  %div78 = fdiv double %tmp13, 2.000000e-01       
  %arrayidx80 = getelementptr inbounds double, double* %y, i64 3 
  store double %div78, double* %arrayidx80
  %div82 = fdiv double %tmp17, 2.000000e-01       
  %arrayidx84 = getelementptr inbounds double, double* %y, i64 4 
  store double %div82, double* %arrayidx84
  %div86 = fdiv double %tmp21, 2.000000e-01       
  %arrayidx88 = getelementptr inbounds double, double* %y, i64 5 
  store double %div86, double* %arrayidx88
  %div90 = fdiv double %tmp25, 2.000000e-01       
  %arrayidx92 = getelementptr inbounds double, double* %y, i64 6 
  store double %div90, double* %arrayidx92
  %div94 = fdiv double %tmp29, 2.000000e-01       
  %arrayidx96 = getelementptr inbounds double, double* %y, i64 7 
  store double %div94, double* %arrayidx96
  %div98 = fdiv double %tmp33, 2.000000e-01       
  %arrayidx100 = getelementptr inbounds double, double* %y, i64 8 
  store double %div98, double* %arrayidx100
  %div102 = fdiv double %tmp37, 2.000000e-01      
  %arrayidx104 = getelementptr inbounds double, double* %y, i64 9 
  store double %div102, double* %arrayidx104
  %div106 = fdiv double %tmp41, 2.000000e-01      
  %arrayidx108 = getelementptr inbounds double, double* %y, i64 10 
  store double %div106, double* %arrayidx108
  %div110 = fdiv double %tmp45, 2.000000e-01      
  %arrayidx112 = getelementptr inbounds double, double* %y, i64 11 
  store double %div110, double* %arrayidx112
  %div114 = fdiv double %tmp49, 2.000000e-01      
  %arrayidx116 = getelementptr inbounds double, double* %y, i64 12 
  store double %div114, double* %arrayidx116
  %div118 = fdiv double %tmp53, 2.000000e-01      
  %arrayidx120 = getelementptr inbounds double, double* %y, i64 13 
  store double %div118, double* %arrayidx120
  %div122 = fdiv double %tmp57, 2.000000e-01      
  %arrayidx124 = getelementptr inbounds double, double* %y, i64 14 
  store double %div122, double* %arrayidx124
  %div126 = fdiv double %tmp61, 2.000000e-01      
  %arrayidx128 = getelementptr inbounds double, double* %y, i64 15 
  store double %div126, double* %arrayidx128
  %div130 = fdiv double %tmp65, 0.000000e+00      
  %arrayidx132 = getelementptr inbounds double, double* %y, i64 16 
  store double %div130, double* %arrayidx132
  ret void
}
