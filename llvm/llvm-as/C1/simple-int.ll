target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"


declare double @llvm.fma.f64(double, double, double)
declare double @llvm.fmuladd.f64(double, double, double)
declare double @llvm.cos.f64(double)
declare double @llvm.powi.f64(double, i32)
declare double @llvm.round.f64(double)
declare double @llvm.copysign.f64(double, double)
declare double @llvm.ceil.f64(double)
declare double @llvm.nearbyint.f64(double)
declare double @llvm.rint.f64(double)
declare double @llvm.trunc.f64(double)
declare double @llvm.floor.f64(double)
declare double @llvm.fabs.f64(double)
declare i64 @llvm.bswap.i64(i64)
declare i64 @llvm.ctpop.i64(i64)
declare i64 @llvm.ctlz.i64(i64, i1)
declare i64 @llvm.cttz.i64(i64, i1)


define double @test1(double %A1, double %A2, double %B1, double %B2, double %C1, double %C2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.fma.f64(double %X1, double %A1, double %C1)
	%Y2 = call double @llvm.fma.f64(double %X2, double %A2, double %C2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R














}


define double @test1a(double %A1, double %A2, double %B1, double %B2, double %C1, double %C2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.fmuladd.f64(double %X1, double %A1, double %C1)
	%Y2 = call double @llvm.fmuladd.f64(double %X2, double %A2, double %C2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R














}


define double @test2(double %A1, double %A2, double %B1, double %B2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.cos.f64(double %X1)
	%Y2 = call double @llvm.cos.f64(double %X2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R












}


define double @test3(double %A1, double %A2, double %B1, double %B2, i32 %P) {

	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.powi.f64(double %X1, i32 %P)
	%Y2 = call double @llvm.powi.f64(double %X2, i32 %P)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R












}


define double @test4(double %A1, double %A2, double %B1, double %B2, i32 %P) {

	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
        %P2 = add i32 %P, 1
	%Y1 = call double @llvm.powi.f64(double %X1, i32 %P)
	%Y2 = call double @llvm.powi.f64(double %X2, i32 %P2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R



}


define double @testround(double %A1, double %A2, double %B1, double %B2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.round.f64(double %X1)
	%Y2 = call double @llvm.round.f64(double %X2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R













}


define double @testcopysign(double %A1, double %A2, double %B1, double %B2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.copysign.f64(double %X1, double %A1)
	%Y2 = call double @llvm.copysign.f64(double %X2, double %A1)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R














}


define double @testceil(double %A1, double %A2, double %B1, double %B2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.ceil.f64(double %X1)
	%Y2 = call double @llvm.ceil.f64(double %X2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R













}


define double @testnearbyint(double %A1, double %A2, double %B1, double %B2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.nearbyint.f64(double %X1)
	%Y2 = call double @llvm.nearbyint.f64(double %X2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R













}


define double @testrint(double %A1, double %A2, double %B1, double %B2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.rint.f64(double %X1)
	%Y2 = call double @llvm.rint.f64(double %X2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R













}


define double @testtrunc(double %A1, double %A2, double %B1, double %B2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.trunc.f64(double %X1)
	%Y2 = call double @llvm.trunc.f64(double %X2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R













}


define double @testfloor(double %A1, double %A2, double %B1, double %B2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.floor.f64(double %X1)
	%Y2 = call double @llvm.floor.f64(double %X2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R













}


define double @testfabs(double %A1, double %A2, double %B1, double %B2) {
	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%Y1 = call double @llvm.fabs.f64(double %X1)
	%Y2 = call double @llvm.fabs.f64(double %X2)
	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%R  = fmul double %Z1, %Z2
	ret double %R













}


define i64 @testbswap(i64 %A1, i64 %A2, i64 %B1, i64 %B2) {
	%X1 = sub i64 %A1, %B1
	%X2 = sub i64 %A2, %B2
	%Y1 = call i64 @llvm.bswap.i64(i64 %X1)
	%Y2 = call i64 @llvm.bswap.i64(i64 %X2)
	%Z1 = add i64 %Y1, %B1
	%Z2 = add i64 %Y2, %B2
	%R  = mul i64 %Z1, %Z2
	ret i64 %R
	













}


define i64 @testctpop(i64 %A1, i64 %A2, i64 %B1, i64 %B2) {
	%X1 = sub i64 %A1, %B1
	%X2 = sub i64 %A2, %B2
	%Y1 = call i64 @llvm.ctpop.i64(i64 %X1)
	%Y2 = call i64 @llvm.ctpop.i64(i64 %X2)
	%Z1 = add i64 %Y1, %B1
	%Z2 = add i64 %Y2, %B2
	%R  = mul i64 %Z1, %Z2
	ret i64 %R
	













}


define i64 @testctlz(i64 %A1, i64 %A2, i64 %B1, i64 %B2) {
	%X1 = sub i64 %A1, %B1
	%X2 = sub i64 %A2, %B2
	%Y1 = call i64 @llvm.ctlz.i64(i64 %X1, i1 true)
	%Y2 = call i64 @llvm.ctlz.i64(i64 %X2, i1 true)
	%Z1 = add i64 %Y1, %B1
	%Z2 = add i64 %Y2, %B2
	%R  = mul i64 %Z1, %Z2
	ret i64 %R














}


define i64 @testctlzneg(i64 %A1, i64 %A2, i64 %B1, i64 %B2) {
	%X1 = sub i64 %A1, %B1
	%X2 = sub i64 %A2, %B2
	%Y1 = call i64 @llvm.ctlz.i64(i64 %X1, i1 true)
	%Y2 = call i64 @llvm.ctlz.i64(i64 %X2, i1 false)
	%Z1 = add i64 %Y1, %B1
	%Z2 = add i64 %Y2, %B2
	%R  = mul i64 %Z1, %Z2
	ret i64 %R










}


define i64 @testcttz(i64 %A1, i64 %A2, i64 %B1, i64 %B2) {
	%X1 = sub i64 %A1, %B1
	%X2 = sub i64 %A2, %B2
	%Y1 = call i64 @llvm.cttz.i64(i64 %X1, i1 true)
	%Y2 = call i64 @llvm.cttz.i64(i64 %X2, i1 true)
	%Z1 = add i64 %Y1, %B1
	%Z2 = add i64 %Y2, %B2
	%R  = mul i64 %Z1, %Z2
	ret i64 %R














}


define i64 @testcttzneg(i64 %A1, i64 %A2, i64 %B1, i64 %B2) {
	%X1 = sub i64 %A1, %B1
	%X2 = sub i64 %A2, %B2
	%Y1 = call i64 @llvm.cttz.i64(i64 %X1, i1 true)
	%Y2 = call i64 @llvm.cttz.i64(i64 %X2, i1 false)
	%Z1 = add i64 %Y1, %B1
	%Z2 = add i64 %Y2, %B2
	%R  = mul i64 %Z1, %Z2
	ret i64 %R










}




















