

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "i686-apple-darwin8"

define void @Transpose(i32* %DataIn, i32* %DataOut) {
entry:
	%buffer = alloca [64 x i32], align 16		
	%"alloca point" = bitcast i32 0 to i32		
	br label %bb6

bb:		
	%tmp2 = load volatile i32, i32* %DataIn		
	%tmp3 = getelementptr [64 x i32], [64 x i32]* %buffer, i32 0, i32 %i.0		
	store i32 %tmp2, i32* %tmp3
	%tmp5 = add i32 %i.0, 1		
	br label %bb6

bb6:		
	%i.0 = phi i32 [ 0, %entry ], [ %tmp5, %bb ]		
	%tmp8 = icmp sle i32 %i.0, 63		
	%tmp89 = zext i1 %tmp8 to i8		
	%toBool = icmp ne i8 %tmp89, 0		
	br i1 %toBool, label %bb, label %bb30

bb12:		
	%tmp14 = mul i32 %j.1, 8		
	%tmp16 = add i32 %tmp14, %i.1		
	%tmp17 = getelementptr [64 x i32], [64 x i32]* %buffer, i32 0, i32 %tmp16		
	%tmp18 = load i32, i32* %tmp17		
	store volatile i32 %tmp18, i32* %DataOut
	%tmp21 = add i32 %j.1, 1		
	br label %bb22

bb22:		
	%j.1 = phi i32 [ %tmp21, %bb12 ], [ 0, %bb30 ]		
	%tmp24 = icmp sle i32 %j.1, 7		
	%tmp2425 = zext i1 %tmp24 to i8		
	%toBool26 = icmp ne i8 %tmp2425, 0		
	br i1 %toBool26, label %bb12, label %bb27

bb27:		
	%tmp29 = add i32 %i.1, 1		
	br label %bb30

bb30:		
	%j.0 = phi i32 [ %j.1, %bb27 ], [ undef, %bb6 ]		
	%i.1 = phi i32 [ %tmp29, %bb27 ], [ 0, %bb6 ]		
	%tmp32 = icmp sle i32 %i.1, 7		
	%tmp3233 = zext i1 %tmp32 to i8		
	%toBool34 = icmp ne i8 %tmp3233, 0		
	br i1 %toBool34, label %bb22, label %return

return:		
	ret void
}
