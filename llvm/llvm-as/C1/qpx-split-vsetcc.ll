
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-bgq-linux"


define void @gsl_sf_legendre_Pl_deriv_array() #0 {
entry:
  br i1 undef, label %do.body.i, label %if.else.i

do.body.i:                                        
  unreachable

if.else.i:                                        
  br i1 undef, label %return, label %for.body46.lr.ph

for.body46.lr.ph:                                 
  br label %vector.body198

vector.body198:                                   
  %0 = icmp ne <4 x i32> undef, zeroinitializer
  %1 = select <4 x i1> %0, <4 x double> <double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01>, <4 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>
  %2 = fmul <4 x double> undef, %1
  %3 = fmul <4 x double> undef, %2
  %4 = fmul <4 x double> %3, undef
  store <4 x double> %4, <4 x double>* undef, align 8
  br label %vector.body198








return:                                           
  ret void
}

attributes #0 = { nounwind }

