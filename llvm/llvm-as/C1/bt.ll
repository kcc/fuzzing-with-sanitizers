


















define void @test2(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = lshr i32 %x, %n		
	%tmp3 = and i32 %tmp29, 1		
	%tmp4 = icmp eq i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @test2b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = lshr i32 %x, %n		
	%tmp3 = and i32 1, %tmp29
	%tmp4 = icmp eq i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @atest2(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = ashr i32 %x, %n		
	%tmp3 = and i32 %tmp29, 1		
	%tmp4 = icmp eq i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @atest2b(i32 %x, i32 %n) nounwind {
entry:


	%tmp29 = ashr i32 %x, %n		
	%tmp3 = and i32 1, %tmp29
	%tmp4 = icmp eq i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @test3(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %tmp29, %x		
	%tmp4 = icmp eq i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @test3b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %x, %tmp29
	%tmp4 = icmp eq i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @testne2(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = lshr i32 %x, %n		
	%tmp3 = and i32 %tmp29, 1		
	%tmp4 = icmp ne i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @testne2b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = lshr i32 %x, %n		
	%tmp3 = and i32 1, %tmp29
	%tmp4 = icmp ne i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @atestne2(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = ashr i32 %x, %n		
	%tmp3 = and i32 %tmp29, 1		
	%tmp4 = icmp ne i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @atestne2b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = ashr i32 %x, %n		
	%tmp3 = and i32 1, %tmp29
	%tmp4 = icmp ne i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @testne3(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %tmp29, %x		
	%tmp4 = icmp ne i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @testne3b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %x, %tmp29
	%tmp4 = icmp ne i32 %tmp3, 0		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @query2(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = lshr i32 %x, %n		
	%tmp3 = and i32 %tmp29, 1		
	%tmp4 = icmp eq i32 %tmp3, 1		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @query2b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = lshr i32 %x, %n		
	%tmp3 = and i32 1, %tmp29
	%tmp4 = icmp eq i32 %tmp3, 1		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @aquery2(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = ashr i32 %x, %n		
	%tmp3 = and i32 %tmp29, 1		
	%tmp4 = icmp eq i32 %tmp3, 1		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @aquery2b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = ashr i32 %x, %n		
	%tmp3 = and i32 1, %tmp29
	%tmp4 = icmp eq i32 %tmp3, 1		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @query3(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %tmp29, %x		
	%tmp4 = icmp eq i32 %tmp3, %tmp29		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @query3b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %x, %tmp29
	%tmp4 = icmp eq i32 %tmp3, %tmp29		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @query3x(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %tmp29, %x		
	%tmp4 = icmp eq i32 %tmp29, %tmp3		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @query3bx(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %x, %tmp29
	%tmp4 = icmp eq i32 %tmp29, %tmp3		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @queryne2(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = lshr i32 %x, %n		
	%tmp3 = and i32 %tmp29, 1		
	%tmp4 = icmp ne i32 %tmp3, 1		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @queryne2b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = lshr i32 %x, %n		
	%tmp3 = and i32 1, %tmp29
	%tmp4 = icmp ne i32 %tmp3, 1		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @aqueryne2(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = ashr i32 %x, %n		
	%tmp3 = and i32 %tmp29, 1		
	%tmp4 = icmp ne i32 %tmp3, 1		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @aqueryne2b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = ashr i32 %x, %n		
	%tmp3 = and i32 1, %tmp29
	%tmp4 = icmp ne i32 %tmp3, 1		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @queryne3(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %tmp29, %x		
	%tmp4 = icmp ne i32 %tmp3, %tmp29		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @queryne3b(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %x, %tmp29
	%tmp4 = icmp ne i32 %tmp3, %tmp29		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @queryne3x(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %tmp29, %x		
	%tmp4 = icmp ne i32 %tmp29, %tmp3		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

define void @queryne3bx(i32 %x, i32 %n) nounwind {
entry:



	%tmp29 = shl i32 1, %n		
	%tmp3 = and i32 %x, %tmp29
	%tmp4 = icmp ne i32 %tmp29, %tmp3		
	br i1 %tmp4, label %bb, label %UnifiedReturnBlock

bb:		
	call void @foo()
	ret void

UnifiedReturnBlock:		
	ret void
}

declare void @foo()

define zeroext i1 @invert(i32 %flags, i32 %flag) nounwind {

entry:
  %neg = xor i32 %flags, -1
  %shl = shl i32 1, %flag
  %and = and i32 %shl, %neg
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}
