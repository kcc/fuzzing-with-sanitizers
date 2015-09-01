target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"




define double @test1(double %A1, double %A2, double %B1, double %B2, i1 %C1, i1 %C2) {





	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2

	%Y1 = fmul double %X1, %A1
	%Y2 = fmul double %X2, %A2

        %Z1 = select i1 %C1, double %Y1, double %B1
        %Z2 = select i1 %C2, double %Y2, double %B2



	%R  = fmul double %Z1, %Z2



	ret double %R

}


define double @test2(double %A1, double %A2, double %B1, double %B2) {






	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2

	%Y1 = fmul double %X1, %A1
	%Y2 = fmul double %X2, %A2

	%C1 = fcmp ogt double %X1, %A1
        %C2 = fcmp ogt double %X2, %A2


        %Z1 = select i1 %C1, double %Y1, double %B1
        %Z2 = select i1 %C2, double %Y2, double %B2

	%R  = fmul double %Z1, %Z2



	ret double %R

}

