


	%struct.anon = type { void ()* }
	%struct.one_atexit_routine = type { %struct.anon, i32, i8* }
@__dso_handle = external global { }		
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (void ()*)* @atexit to i8*)], section "llvm.metadata"		

define hidden i32 @atexit(void ()* %func) nounwind {
entry:









	%r = alloca %struct.one_atexit_routine, align 4		
	%0 = getelementptr %struct.one_atexit_routine, %struct.one_atexit_routine* %r, i32 0, i32 0, i32 0		
	store void ()* %func, void ()** %0, align 4
	%1 = getelementptr %struct.one_atexit_routine, %struct.one_atexit_routine* %r, i32 0, i32 1		
	store i32 0, i32* %1, align 4
	%2 = call  i32 @atexit_common(%struct.one_atexit_routine* %r, i8* bitcast ({ }* @__dso_handle to i8*)) nounwind		
	ret i32 %2
}

declare i32 @atexit_common(%struct.one_atexit_routine*, i8*) nounwind
