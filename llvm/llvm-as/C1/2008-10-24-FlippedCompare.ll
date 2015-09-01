

define void @f(float %wt) {
entry:
	%0 = fcmp ogt float %wt, 0.000000e+00		
	%1 = tail call i32 @g(i32 44)		
	%2 = inttoptr i32 %1 to i8*		
	br i1 %0, label %bb, label %bb1

bb:		
	ret void

bb1:		
	ret void
}

declare i32 @g(i32)
