

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i686-apple-darwin8"
@p = weak global i8* null		

define i32 @main() {
entry:
	%"alloca point" = bitcast i32 0 to i32		
	br label %lab

lab:		
	%n.0 = phi i32 [ 0, %entry ], [ %tmp25, %cleanup31 ]		
	%tmp2 = call i8* @llvm.stacksave( )		
	%tmp4 = srem i32 %n.0, 47		
	%tmp5 = add i32 %tmp4, 1		
	%tmp7 = sub i32 %tmp5, 1		
	%tmp89 = zext i32 %tmp5 to i64		
	%tmp10 = mul i64 %tmp89, 32		
	%tmp12 = mul i32 %tmp5, 4		
	%tmp1314 = zext i32 %tmp5 to i64		
	%tmp15 = mul i64 %tmp1314, 32		
	%tmp17 = mul i32 %tmp5, 4		
	%tmp18 = alloca i8, i32 %tmp17		
	%tmp1819 = bitcast i8* %tmp18 to i32*		
	%tmp21 = getelementptr i32, i32* %tmp1819, i32 0		
	store i32 1, i32* %tmp21, align 4
	%tmp2223 = bitcast i32* %tmp1819 to i8*		
	store volatile i8* %tmp2223, i8** @p, align 4
	%tmp25 = add i32 %n.0, 1		
	%tmp27 = icmp sle i32 %tmp25, 999999		
	%tmp2728 = zext i1 %tmp27 to i8		
	%toBool = icmp ne i8 %tmp2728, 0		
	br i1 %toBool, label %cleanup31, label %cond_next

cond_next:		
	call void @llvm.stackrestore( i8* %tmp2 )
	ret i32 0

cleanup31:		
	call void @llvm.stackrestore( i8* %tmp2 )
	br label %lab
}

declare i8* @llvm.stacksave()

declare void @llvm.stackrestore(i8*)
