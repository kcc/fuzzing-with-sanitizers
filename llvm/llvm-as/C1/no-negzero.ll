


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.8"




define double @mysqrt(double %x) nounwind {
entry:
  %x_addr = alloca double                         
  %retval = alloca double, align 8                
  %0 = alloca double, align 8                     
  %"alloca point" = bitcast i32 0 to i32          
  store double %x, double* %x_addr
  %1 = load double, double* %x_addr, align 8              
  %2 = call double @fabs(double %1) nounwind readnone 
  %3 = call double @sqrt(double %2) nounwind readonly 
  %4 = fadd double %3, 0.000000e+00               
  store double %4, double* %0, align 8
  %5 = load double, double* %0, align 8                   
  store double %5, double* %retval, align 8
  br label %return

return:                                           
  %retval1 = load double, double* %retval                 
  ret double %retval1
}

declare double @fabs(double)

declare double @sqrt(double) nounwind readonly
