
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9"

define i32 @test(i32 %g, i8* %P) nounwind  {
entry:
	%tmp2 = call i32 @strlen( i8* %P ) nounwind readonly 		
	%tmp3 = icmp eq i32 %tmp2, 100		
	%tmp34 = zext i1 %tmp3 to i8		
	%toBool = icmp ne i8 %tmp34, 0		
	br i1 %toBool, label %bb, label %bb6

bb:		
	br label %bb27

bb6:		
	%tmp8 = add i32 %g, 42		
	%tmp10 = call i32 @strlen( i8* %P ) nounwind readonly 		
	%tmp11 = icmp eq i32 %tmp10, 100		
	%tmp1112 = zext i1 %tmp11 to i8		
	%toBool13 = icmp ne i8 %tmp1112, 0		
	br i1 %toBool13, label %bb14, label %bb16

bb14:		
	br label %bb27

bb16:		
	%tmp18 = mul i32 %tmp8, 2		
	%tmp20 = call i32 @strlen( i8* %P ) nounwind readonly 		
	%tmp21 = icmp eq i32 %tmp20, 100		
	%tmp2122 = zext i1 %tmp21 to i8		
	%toBool23 = icmp ne i8 %tmp2122, 0		
	br i1 %toBool23, label %bb24, label %bb26

bb24:		
	br label %bb27

bb26:		
	br label %bb27

bb27:		
	%tmp.0 = phi i32 [ 11, %bb26 ], [ %tmp18, %bb24 ], [ %tmp8, %bb14 ], [ %g, %bb ]		
	br label %return

return:		
	ret i32 %tmp.0
}

declare i32 @strlen(i8*) nounwind readonly 
