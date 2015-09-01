

define i32 @test() {
	br i1 false, label %cond_next33, label %cond_true12
cond_true12:		
	ret i32 0
cond_next33:		
	%tmp44.i = call double @foo( double 0.000000e+00, i32 32 )		
	%tmp61.i = load i8, i8* null		
	%tmp61.i.upgrd.1 = zext i8 %tmp61.i to i32		
	%tmp58.i = or i32 0, %tmp61.i.upgrd.1		
	%tmp62.i = or i32 %tmp58.i, 0		
	%tmp62.i.upgrd.2 = sitofp i32 %tmp62.i to double		
	%tmp64.i = fadd double %tmp62.i.upgrd.2, %tmp44.i		
	%tmp68.i = call double @foo( double %tmp64.i, i32 0 )		
	ret i32 0
}

declare double @foo(double, i32)

