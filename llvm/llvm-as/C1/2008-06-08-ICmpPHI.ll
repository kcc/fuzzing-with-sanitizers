

define void @test() nounwind  {
entry:
	br label %bb

bb:		
	%i.0 = phi i32 [ 0, %entry ], [ %indvar.next, %somebb ]		
	%x.0 = phi i32 [ 37, %entry ], [ %tmp17, %somebb ]		
	%tmp = tail call i32 (...) @bork( ) nounwind 		
	%tmp1 = tail call i32 (...) @bork( ) nounwind 		
	%tmp2 = tail call i32 (...) @bork( ) nounwind 		
	%tmp3 = icmp eq i32 %tmp2, 0		
	br i1 %tmp3, label %bb7, label %bb5

bb5:		
	%tmp6 = tail call i32 (...) @bork( ) nounwind 		
	br label %bb7

bb7:		
	%tmp8 = tail call i32 (...) @bork( ) nounwind 		
	%tmp9 = tail call i32 (...) @bork( ) nounwind 		
	%tmp11 = icmp eq i32 %x.0, 37		
	br i1 %tmp11, label %bb14, label %bb16

bb14:		
	%tmp15 = tail call i32 (...) @bar( ) nounwind 		
	br label %bb16

bb16:		
	%tmp17 = tail call i32 (...) @zap( ) nounwind 		
	%indvar.next = add i32 %i.0, 1		
	%exitcond = icmp eq i32 %indvar.next, 42		
	br i1 %exitcond, label %return, label %somebb

somebb:
	br label %bb

return:		
	ret void
}

declare i32 @bork(...)

declare i32 @bar(...)

declare i32 @zap(...)
