

define i32 @f(i32 %a) {
entry:
	%tmp2 = icmp eq i32 %a, 0		
	%t.0 = select i1 %tmp2, i32 (...)* null, i32 (...)* @test_weak		
	%tmp5 = icmp eq i32 (...)* %t.0, null		
	br i1 %tmp5, label %UnifiedReturnBlock, label %cond_true8

cond_true8:		
	%tmp10 = tail call i32 (...) %t.0( )		
	ret i32 %tmp10

UnifiedReturnBlock:		
	ret i32 250
}

declare extern_weak i32 @test_weak(...)



