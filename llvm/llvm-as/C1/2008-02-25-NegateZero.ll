


define void @test() {
entry:
	%tmp98 = load float, float* null, align 4		
	%tmp106 = load float, float* null, align 4		
	%tmp113 = fadd float %tmp98, %tmp106		
	%tmp119 = fsub float %tmp113, 0.000000e+00		
	call void (i32, ...) @foo( i32 0, float 0.000000e+00, float %tmp119 ) nounwind 
	ret void
}

declare void @foo(i32, ...)
