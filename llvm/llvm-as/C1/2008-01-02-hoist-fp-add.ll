


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i686-apple-darwin8"
@G = weak global i32 0, align 8		

define void @test(i32 %X, i32 %Y, i32 %Z) {
entry:
	%"alloca point" = bitcast i32 0 to i32		
	%tmp = load i32, i32* @G, align 8		
	%tmp3 = icmp eq i32 %X, %Y		
	%tmp34 = zext i1 %tmp3 to i8		
	%toBool = icmp ne i8 %tmp34, 0		
	br i1 %toBool, label %cond_true, label %cond_next

cond_true:		
	%tmp7 = udiv i32 %tmp, %Z		
	br label %cond_next

cond_next:		

	%F.0 = phi i32 [ %tmp, %entry ], [ %tmp7, %cond_true ]		
	store i32 %F.0, i32* @G, align 8
	ret void
}

