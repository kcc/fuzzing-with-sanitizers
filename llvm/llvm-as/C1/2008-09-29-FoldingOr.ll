


define i32 @test(i32 %p_74) {
	%A = icmp eq i32 %p_74, 0		
	%B = icmp slt i32 %p_74, -638208501		
	%or.cond = or i1 %A, %B		
	%iftmp.10.0 = select i1 %or.cond, i32 0, i32 1		
	ret i32 %iftmp.10.0
}
