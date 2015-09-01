



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"
	%struct.__res_state = type { i32 }
@__resp = thread_local global %struct.__res_state* @_res		
@_res = global %struct.__res_state zeroinitializer, section ".bss"		

@__libc_resp = hidden thread_local alias %struct.__res_state** @__resp		

define i32 @foo() {


entry:
	%retval = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	%tmp = load %struct.__res_state*, %struct.__res_state** @__libc_resp, align 4		
	%tmp1 = getelementptr %struct.__res_state, %struct.__res_state* %tmp, i32 0, i32 0		
	store i32 0, i32* %tmp1, align 4
	br label %return
return:		
	%retval2 = load i32, i32* %retval		
	ret i32 %retval2
}

define i32 @bar() {


entry:
	%retval = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	%tmp = load %struct.__res_state*, %struct.__res_state** @__libc_resp, align 4		
	%tmp1 = getelementptr %struct.__res_state, %struct.__res_state* %tmp, i32 0, i32 0		
	store i32 1, i32* %tmp1, align 4
	br label %return
return:		
	%retval2 = load i32, i32* %retval		
	ret i32 %retval2
}
