target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"



define double @test1(double %A1, double %A2, double %A3, double %B1, double %B2, double %B3) {







	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2
	%X3 = fsub double %A3, %B3

	%Y1 = fmul double %X1, %A1
	%Y2 = fmul double %X2, %A2
	%Y3 = fmul double %X3, %A3

	%Z1 = fadd double %Y1, %B1
	%Z2 = fadd double %Y2, %B2
	%Z3 = fadd double %Y3, %B3

        %R1 = fmul double %Z1, %Z2
	%R  = fmul double %R1, %Z3





	ret double %R

}

