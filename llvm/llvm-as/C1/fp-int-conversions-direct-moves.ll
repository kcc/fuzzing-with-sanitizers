



define zeroext i8 @_Z6testcff(float %arg) {
entry:
  %arg.addr = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %conv = fptoui float %0 to i8
  ret i8 %conv



}


define float @_Z6testfcc(i8 zeroext %arg) {
entry:
  %arg.addr = alloca i8, align 1
  store i8 %arg, i8* %arg.addr, align 1
  %0 = load i8, i8* %arg.addr, align 1
  %conv = uitofp i8 %0 to float
  ret float %conv



}


define zeroext i8 @_Z6testcdd(double %arg) {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8
  %0 = load double, double* %arg.addr, align 8
  %conv = fptoui double %0 to i8
  ret i8 %conv



}


define double @_Z6testdcc(i8 zeroext %arg) {
entry:
  %arg.addr = alloca i8, align 1
  store i8 %arg, i8* %arg.addr, align 1
  %0 = load i8, i8* %arg.addr, align 1
  %conv = uitofp i8 %0 to double
  ret double %conv



}


define zeroext i8 @_Z7testucff(float %arg) {
entry:
  %arg.addr = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %conv = fptoui float %0 to i8
  ret i8 %conv



}


define float @_Z7testfuch(i8 zeroext %arg) {
entry:
  %arg.addr = alloca i8, align 1
  store i8 %arg, i8* %arg.addr, align 1
  %0 = load i8, i8* %arg.addr, align 1
  %conv = uitofp i8 %0 to float
  ret float %conv



}


define zeroext i8 @_Z7testucdd(double %arg) {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8
  %0 = load double, double* %arg.addr, align 8
  %conv = fptoui double %0 to i8
  ret i8 %conv



}


define double @_Z7testduch(i8 zeroext %arg) {
entry:
  %arg.addr = alloca i8, align 1
  store i8 %arg, i8* %arg.addr, align 1
  %0 = load i8, i8* %arg.addr, align 1
  %conv = uitofp i8 %0 to double
  ret double %conv



}


define signext i16 @_Z6testsff(float %arg) {
entry:
  %arg.addr = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %conv = fptosi float %0 to i16
  ret i16 %conv



}


define float @_Z6testfss(i16 signext %arg) {
entry:
  %arg.addr = alloca i16, align 2
  store i16 %arg, i16* %arg.addr, align 2
  %0 = load i16, i16* %arg.addr, align 2
  %conv = sitofp i16 %0 to float
  ret float %conv



}


define signext i16 @_Z6testsdd(double %arg) {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8
  %0 = load double, double* %arg.addr, align 8
  %conv = fptosi double %0 to i16
  ret i16 %conv



}


define double @_Z6testdss(i16 signext %arg) {
entry:
  %arg.addr = alloca i16, align 2
  store i16 %arg, i16* %arg.addr, align 2
  %0 = load i16, i16* %arg.addr, align 2
  %conv = sitofp i16 %0 to double
  ret double %conv



}


define zeroext i16 @_Z7testusff(float %arg) {
entry:
  %arg.addr = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %conv = fptoui float %0 to i16
  ret i16 %conv



}


define float @_Z7testfust(i16 zeroext %arg) {
entry:
  %arg.addr = alloca i16, align 2
  store i16 %arg, i16* %arg.addr, align 2
  %0 = load i16, i16* %arg.addr, align 2
  %conv = uitofp i16 %0 to float
  ret float %conv



}


define zeroext i16 @_Z7testusdd(double %arg) {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8
  %0 = load double, double* %arg.addr, align 8
  %conv = fptoui double %0 to i16
  ret i16 %conv



}


define double @_Z7testdust(i16 zeroext %arg) {
entry:
  %arg.addr = alloca i16, align 2
  store i16 %arg, i16* %arg.addr, align 2
  %0 = load i16, i16* %arg.addr, align 2
  %conv = uitofp i16 %0 to double
  ret double %conv



}


define signext i32 @_Z6testiff(float %arg) {
entry:
  %arg.addr = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %conv = fptosi float %0 to i32
  ret i32 %conv



}


define float @_Z6testfii(i32 signext %arg) {
entry:
  %arg.addr = alloca i32, align 4
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load i32, i32* %arg.addr, align 4
  %conv = sitofp i32 %0 to float
  ret float %conv



}


define signext i32 @_Z6testidd(double %arg) {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8
  %0 = load double, double* %arg.addr, align 8
  %conv = fptosi double %0 to i32
  ret i32 %conv



}


define double @_Z6testdii(i32 signext %arg) {
entry:
  %arg.addr = alloca i32, align 4
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load i32, i32* %arg.addr, align 4
  %conv = sitofp i32 %0 to double
  ret double %conv



}


define zeroext i32 @_Z7testuiff(float %arg) {
entry:
  %arg.addr = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %conv = fptoui float %0 to i32
  ret i32 %conv



}


define float @_Z7testfuij(i32 zeroext %arg) {
entry:
  %arg.addr = alloca i32, align 4
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load i32, i32* %arg.addr, align 4
  %conv = uitofp i32 %0 to float
  ret float %conv



}


define zeroext i32 @_Z7testuidd(double %arg) {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8
  %0 = load double, double* %arg.addr, align 8
  %conv = fptoui double %0 to i32
  ret i32 %conv



}


define double @_Z7testduij(i32 zeroext %arg) {
entry:
  %arg.addr = alloca i32, align 4
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load i32, i32* %arg.addr, align 4
  %conv = uitofp i32 %0 to double
  ret double %conv



}


define i64 @_Z7testllff(float %arg) {
entry:
  %arg.addr = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %conv = fptosi float %0 to i64
  ret i64 %conv



}


define float @_Z7testfllx(i64 %arg) {
entry:
  %arg.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %conv = sitofp i64 %0 to float
  ret float %conv



}


define i64 @_Z7testlldd(double %arg) {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8
  %0 = load double, double* %arg.addr, align 8
  %conv = fptosi double %0 to i64
  ret i64 %conv



}


define double @_Z7testdllx(i64 %arg) {
entry:
  %arg.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %conv = sitofp i64 %0 to double
  ret double %conv



}


define i64 @_Z8testullff(float %arg) {
entry:
  %arg.addr = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %conv = fptoui float %0 to i64
  ret i64 %conv



}


define float @_Z8testfully(i64 %arg) {
entry:
  %arg.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %conv = uitofp i64 %0 to float
  ret float %conv



}


define i64 @_Z8testulldd(double %arg) {
entry:
  %arg.addr = alloca double, align 8
  store double %arg, double* %arg.addr, align 8
  %0 = load double, double* %arg.addr, align 8
  %conv = fptoui double %0 to i64
  ret i64 %conv



}


define double @_Z8testdully(i64 %arg) {
entry:
  %arg.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %conv = uitofp i64 %0 to double
  ret double %conv



}
