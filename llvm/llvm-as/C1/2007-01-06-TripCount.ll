


target datalayout = "e-p:32:32"
target triple = "i686-apple-darwin8"
@foo = internal constant [5 x i8] c"\00abc\00"		
@str = internal constant [4 x i8] c"%d\0A\00"		


define i32 @test(i32 %J) {
entry:
	br label %bb2

bb:		
	%tmp1 = add i32 %i.0, 1		
	br label %bb2

bb2:		
	%i.0 = phi i32 [ 0, %entry ], [ %tmp1, %bb ]		
	%tmp = icmp eq i32 %i.0, 0		
	br i1 %tmp, label %cond_true, label %cond_next

cond_true:		
	br label %bb

cond_next:		
	%tmp2 = getelementptr [5 x i8], [5 x i8]* @foo, i32 0, i32 %i.0		
	%tmp3 = load i8, i8* %tmp2		
	%tmp5 = icmp eq i8 %tmp3, 0		
	br i1 %tmp5, label %bb6, label %bb

bb6:		
	br label %return

return:		
	ret i32 %i.0
}

