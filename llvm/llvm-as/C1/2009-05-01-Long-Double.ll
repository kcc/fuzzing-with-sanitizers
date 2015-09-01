

define x86_fp80 @some_func() nounwind {
entry:
	%retval = alloca x86_fp80		
	%call = call i32 (...) @other_func()		
	%conv = sitofp i32 %call to x86_fp80		
	store x86_fp80 %conv, x86_fp80* %retval
	%0 = load x86_fp80, x86_fp80* %retval		
	ret x86_fp80 %0
}

declare i32 @other_func(...)
