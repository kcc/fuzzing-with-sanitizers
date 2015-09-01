

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"







define float @acos_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @acos(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @acos_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @acos(double %conv)
   ret double %call


}

define float @acosh_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @acosh(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @acosh_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @acosh(double %conv)
   ret double %call


}

define float @asin_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @asin(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @asin_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @asin(double %conv)
   ret double %call


}

define float @asinh_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @asinh(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @asinh_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @asinh(double %conv)
   ret double %call


}

define float @atan_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @atan(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @atan_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @atan(double %conv)
   ret double %call


}
define float @atanh_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @atanh(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @atanh_test2(float %f)   {
    %conv = fpext float %f to double
    %call = call double @atanh(double %conv)
    ret double %call


}
define float @cbrt_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @cbrt(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @cbrt_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @cbrt(double %conv)
   ret double %call


}
define float @exp_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @exp(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @exp_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @exp(double %conv)
   ret double %call


}
define float @expm1_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @expm1(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @expm1_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @expm1(double %conv)
   ret double %call


}
define float @exp10_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @exp10(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @exp10_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @exp10(double %conv)
   ret double %call


}
define float @log_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @log(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @log_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @log(double %conv)
   ret double %call


}
define float @log10_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @log10(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @log10_test2(float %f) {
   %conv = fpext float %f to double
   %call = call double @log10(double %conv)
   ret double %call


}
define float @log1p_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @log1p(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @log1p_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @log1p(double %conv)
   ret double %call


}
define float @log2_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @log2(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @log2_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @log2(double %conv)
   ret double %call


}
define float @logb_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @logb(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @logb_test2(float %f)   {
   %conv = fpext float %f to double
   %call = call double @logb(double %conv)
   ret double %call


}
define float @sin_test(float %f)   {
   %conv = fpext float %f to double
   %call = call double @sin(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @sin_test2(float %f) {
   %conv = fpext float %f to double
   %call = call double @sin(double %conv)
   ret double %call


}

define float @sqrt_test(float %f) {
   %conv = fpext float %f to double
   %call = call double @sqrt(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @sqrt_test2(float %f) {
   %conv = fpext float %f to double
   %call = call double @sqrt(double %conv)
   ret double %call


}

define float @sqrt_int_test(float %f) {
   %conv = fpext float %f to double
   %call = call double @llvm.sqrt.f64(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @sqrt_int_test2(float %f) {
   %conv = fpext float %f to double
   %call = call double @llvm.sqrt.f64(double %conv)
   ret double %call


}

define float @tan_test(float %f) {
   %conv = fpext float %f to double
   %call = call double @tan(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @tan_test2(float %f) {
   %conv = fpext float %f to double
   %call = call double @tan(double %conv)
   ret double %call


}
define float @tanh_test(float %f) {
   %conv = fpext float %f to double
   %call = call double @tanh(double %conv)
   %conv1 = fptrunc double %call to float
   ret float %conv1


}

define double @tanh_test2(float %f) {
   %conv = fpext float %f to double
   %call = call double @tanh(double %conv)
   ret double %call


}

declare double @tanh(double) #1
declare double @tan(double) #1



declare double @sqrt(double) 
declare double @llvm.sqrt.f64(double) 

declare double @sin(double) #1
declare double @log2(double) #1
declare double @log1p(double) #1
declare double @log10(double) #1
declare double @log(double) #1
declare double @logb(double) #1
declare double @exp10(double) #1
declare double @expm1(double) #1
declare double @exp(double) #1
declare double @cbrt(double) #1
declare double @atanh(double) #1
declare double @atan(double) #1
declare double @acos(double) #1
declare double @acosh(double) #1
declare double @asin(double) #1
declare double @asinh(double) #1

attributes #1 = { "unsafe-fp-math"="true" }

