

@accum = external global { double, double }		
@.str = external constant [4 x i8]		

define i32 @main() {
entry:
	br label %bb74.i
bb74.i:		
	br i1 false, label %bb88.i, label %bb74.i
bb88.i:		
	br i1 false, label %mandel.exit, label %bb74.i
mandel.exit:		
	%tmp2 = load volatile double, double* getelementptr ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8		
	%tmp23 = fptosi double %tmp2 to i32		
	%tmp5 = tail call i32 (i8*, ...) @printf( i8* getelementptr ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %tmp23 )		
	ret i32 0
}

declare i32 @printf(i8*, ...)
