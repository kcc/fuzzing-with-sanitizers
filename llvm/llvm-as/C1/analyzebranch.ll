







define double @foo(double %a, double %b) nounwind readnone {
entry:













  %cmp = fcmp ogt double %a, 0.000000e+00
  br i1 %cmp, label %if.end6, label %if.else

if.else:                                          
  %cmp3 = fcmp ogt double %b, 0.000000e+00
  br i1 %cmp3, label %if.end6, label %return

if.end6:                                          
  %c.0 = phi double [ %a, %entry ], [ 0.000000e+00, %if.else ]
  %sub = fsub double %b, %c.0
  %mul = fmul double %sub, 2.000000e+00
  br label %return

return:                                           
  %retval.0 = phi double [ %mul, %if.end6 ], [ 0.000000e+00, %if.else ]
  ret double %retval.0
}

define void @f1(float %f) nounwind {
entry:











  %cmp = fcmp une float %f, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @abort() noreturn
  unreachable

if.end:                                           
  tail call void (...) @f2() nounwind
  ret void
}

declare void @abort() noreturn nounwind

declare void @f2(...)
