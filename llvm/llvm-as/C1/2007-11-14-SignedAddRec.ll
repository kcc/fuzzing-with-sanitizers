




declare void @printd(i32)

define i32 @test() {
entry:
	br label %bb6

bb:		
	%tmp3 = add i32 %x.0, %i.0		
	%tmp5 = add i32 %i.0, 1		
	br label %bb6

bb6:		
	%i.0 = phi i32 [ 0, %entry ], [ %tmp5, %bb ]		
	%x.0 = phi i32 [ 0, %entry ], [ %tmp3, %bb ]		
	%tmp8 = icmp slt i32 %i.0, 123456789		
	br i1 %tmp8, label %bb, label %bb10

bb10:		
	call void @printd(i32 %x.0)
	ret i32 0
}
