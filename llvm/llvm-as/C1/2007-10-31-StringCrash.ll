
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i686-apple-darwin8"

declare void @__darwin_gcc3_preregister_frame_info()

define void @_start(i32 %argc, i8** %argv, i8** %envp) {
entry:
	%tmp1 = bitcast void ()* @__darwin_gcc3_preregister_frame_info to i32*		
	%tmp2 = load i32, i32* %tmp1, align 4		
	%tmp3 = icmp ne i32 %tmp2, 0		
	%tmp34 = zext i1 %tmp3 to i8		
	%toBool = icmp ne i8 %tmp34, 0		
	br i1 %toBool, label %cond_true, label %return

cond_true:		
	ret void

return:		
	ret void
}
