
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define void @Compute_Lateral() #0 {
entry:
  br i1 undef, label %if.then, label %if.end

if.then:                                          
  unreachable

if.end:                                           
  %0 = select i1 undef, <2 x double> undef, <2 x double> zeroinitializer
  %1 = extractelement <2 x double> %0, i32 1
  store double %1, double* undef, align 8
  ret void


}

attributes #0 = { nounwind }

