

@f = external global void ()*		

define i32 @main() nounwind {
entry:
	load void ()*, void ()** @f, align 8		
	tail call void %0( ) nounwind
	ret i32 0
}
