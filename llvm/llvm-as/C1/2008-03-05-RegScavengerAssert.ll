

declare i8* @bar(i32)

define void @foo(i8* %pp) nounwind  {
entry:
	%tmp2 = tail call i8* @bar( i32 14 ) nounwind 		
	%tmp28 = bitcast i8* %pp to void ()**		
	%tmp38 = load void ()*, void ()** %tmp28, align 4		
	br i1 false, label %bb34, label %bb25
bb25:		
	%tmp30 = bitcast void ()* %tmp38 to void (i8*)*		
	tail call void %tmp30( i8* null ) nounwind 
	ret void
bb34:		
	tail call void %tmp38( ) nounwind 
	ret void
}
