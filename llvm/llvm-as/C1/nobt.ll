




define void @test2(i32 %x, i32 %n) nounwind {
entry:
        %tmp1 = and i32 %x, 1
        %tmp2 = urem i32 %tmp1, 15
	%tmp3 = and i32 %tmp2, 1		
	%tmp4 = icmp eq i32 %tmp3, %tmp2	
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @test3(i32 %x, i32 %n) nounwind {
entry:
        %tmp1 = and i32 %x, 1
        %tmp2 = urem i32 %tmp1, 15
	%tmp3 = and i32 %tmp2, 1		
	%tmp4 = icmp eq i32 %tmp2, %tmp3	
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @test4(i32 %x, i32 %n) nounwind {
entry:
        %tmp1 = and i32 %x, 1
        %tmp2 = urem i32 %tmp1, 15
	%tmp3 = and i32 %tmp2, 1		
	%tmp4 = icmp ne i32 %tmp2, %tmp3	
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @test5(i32 %x, i32 %n) nounwind {
entry:
        %tmp1 = and i32 %x, 1
        %tmp2 = urem i32 %tmp1, 15
	%tmp3 = and i32 %tmp2, 1		
	%tmp4 = icmp ne i32 %tmp2, %tmp3	
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

declare void @foo()
