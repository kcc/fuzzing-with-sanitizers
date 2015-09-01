target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"



define double @test1(double %A1, double %A2, double %B1, double %B2) {







	%X1 = fsub double %A1, %B1
	%X2 = fsub double %A2, %B2

	%Y1 = fmul double %X1, %A1
	%Y2 = fmul double %X2, %A2

	%Z1 = fadd double %Y1, %B1
        
        
        
        %mul41 = fmul double %Z1, %Y2
        %sub48 = fsub double %Z1, %mul41
        %mul62 = fmul double %Z1, %sub48
        %sub69 = fsub double %Z1, %mul62
        %mul83 = fmul double %Z1, %sub69
        %sub90 = fsub double %Z1, %mul83
        %mul104 = fmul double %Z1, %sub90
        %sub111 = fsub double %Z1, %mul104
        %mul125 = fmul double %Z1, %sub111
        %sub132 = fsub double %Z1, %mul125
        %mul146 = fmul double %Z1, %sub132
        %sub153 = fsub double %Z1, %mul146
        
	%Z2 = fadd double %Y2, %B2

	%R1  = fdiv double %Z1, %Z2
        %R   = fmul double %R1, %sub153



	ret double %R

}

