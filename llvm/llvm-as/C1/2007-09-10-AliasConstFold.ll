


@__gthrw_pthread_cancel = weak alias i32 (i32)* @pthread_cancel		
@__gthread_active_ptr.5335 = internal constant i8* bitcast (i32 (i32)* @__gthrw_pthread_cancel to i8*)		
define weak i32 @pthread_cancel(i32) {
       ret i32 0
}

define i1 @__gthread_active_p() {
entry:
	%tmp1 = load i8*, i8** @__gthread_active_ptr.5335, align 4		
	%tmp2 = icmp ne i8* %tmp1, null		
	ret i1 %tmp2
}
