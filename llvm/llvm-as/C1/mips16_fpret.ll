





@x = global float 0x41F487E980000000, align 4
@dx = global double 0x41CDCC8BC4800000, align 8
@cx = global { float, float } { float 1.000000e+00, float 9.900000e+01 }, align 4
@dcx = global { double, double } { double 0x42CE5E14A412B480, double 0x423AA4C580DB0000 }, align 8

define float @foox()  {
entry:
  %0 = load float, float* @x, align 4
  ret float %0



}

define double @foodx()  {
entry:
  %0 = load double, double* @dx, align 8
  ret double %0







}

define { float, float } @foocx()  {
entry:
  %retval = alloca { float, float }, align 4
  %cx.real = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @cx, i32 0, i32 0)
  %cx.imag = load float, float* getelementptr inbounds ({ float, float }, { float, float }* @cx, i32 0, i32 1)
  %real = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 1
  store float %cx.real, float* %real
  store float %cx.imag, float* %imag
  %0 = load { float, float }, { float, float }* %retval
  ret { float, float } %0






}

define { double, double } @foodcx()  {
entry:
  %retval = alloca { double, double }, align 8
  %dcx.real = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @dcx, i32 0, i32 0)
  %dcx.imag = load double, double* getelementptr inbounds ({ double, double }, { double, double }* @dcx, i32 0, i32 1)
  %real = getelementptr inbounds { double, double }, { double, double }* %retval, i32 0, i32 0
  %imag = getelementptr inbounds { double, double }, { double, double }* %retval, i32 0, i32 1
  store double %dcx.real, double* %real
  store double %dcx.imag, double* %imag
  %0 = load { double, double }, { double, double }* %retval
  ret { double, double } %0












}
