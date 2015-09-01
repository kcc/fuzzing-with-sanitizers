

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin8"
@g_1 = internal global i32 0		

define i32 @main(i32 %i) nounwind  {
entry:
	%tmp93 = icmp slt i32 %i, 10		
	%tmp34 = load volatile i32, i32* @g_1, align 4		
	br i1 %tmp93, label %bb11, label %bb

bb:		
	%tmp3 = load volatile i32, i32* @g_1, align 4		
	br label %bb11

bb11:		
	%tmp4 = phi i32 [ %tmp34, %entry ], [ %tmp3, %bb ]		
	ret i32 %tmp4
}

