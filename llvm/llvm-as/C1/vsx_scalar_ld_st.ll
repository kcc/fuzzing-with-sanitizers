


@d = common global double 0.000000e+00, align 8
@f = common global float 0.000000e+00, align 4
@i = common global i32 0, align 4
@ui = common global i32 0, align 4


define void @dblToInt() #0 {
entry:
  %ii = alloca i32, align 4
  %0 = load double, double* @d, align 8
  %conv = fptosi double %0 to i32
  store volatile i32 %conv, i32* %ii, align 4
  ret void



}


define void @fltToInt() #0 {
entry:
  %ii = alloca i32, align 4
  %0 = load float, float* @f, align 4
  %conv = fptosi float %0 to i32
  store volatile i32 %conv, i32* %ii, align 4
  ret void



}


define void @intToDbl() #0 {
entry:
  %dd = alloca double, align 8
  %0 = load i32, i32* @i, align 4
  %conv = sitofp i32 %0 to double
  store volatile double %conv, double* %dd, align 8
  ret void



}


define void @intToFlt() #0 {
entry:
  %ff = alloca float, align 4
  %0 = load i32, i32* @i, align 4
  %conv = sitofp i32 %0 to float
  store volatile float %conv, float* %ff, align 4
  ret void



}


define void @dblToUInt() #0 {
entry:
  %uiui = alloca i32, align 4
  %0 = load double, double* @d, align 8
  %conv = fptoui double %0 to i32
  store volatile i32 %conv, i32* %uiui, align 4
  ret void



}


define void @fltToUInt() #0 {
entry:
  %uiui = alloca i32, align 4
  %0 = load float, float* @f, align 4
  %conv = fptoui float %0 to i32
  store volatile i32 %conv, i32* %uiui, align 4
  ret void



}


define void @uIntToDbl() #0 {
entry:
  %dd = alloca double, align 8
  %0 = load i32, i32* @ui, align 4
  %conv = uitofp i32 %0 to double
  store volatile double %conv, double* %dd, align 8
  ret void



}


define void @uIntToFlt() #0 {
entry:
  %ff = alloca float, align 4
  %0 = load i32, i32* @ui, align 4
  %conv = uitofp i32 %0 to float
  store volatile float %conv, float* %ff, align 4
  ret void



}


define void @dblToFloat() #0 {
entry:
  %ff = alloca float, align 4
  %0 = load double, double* @d, align 8
  %conv = fptrunc double %0 to float
  store volatile float %conv, float* %ff, align 4
  ret void



}


define void @floatToDbl() #0 {
entry:
  %dd = alloca double, align 8
  %0 = load float, float* @f, align 4
  %conv = fpext float %0 to double
  store volatile double %conv, double* %dd, align 8
  ret void



}
