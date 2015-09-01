


define i64 @test(i32* %tmp13) nounwind {
entry:
	br label %while.cond

while.cond:		
	%tmp15 = load i32, i32* %tmp13		
	%bf.lo = lshr i32 %tmp15, 1		
	%bf.lo.cleared = and i32 %bf.lo, 2147483647		
	%conv = zext i32 %bf.lo.cleared to i64		
	%bf.lo.cleared25 = and i32 %tmp15, 1		
	%tobool = icmp ne i32 %bf.lo.cleared25, 0		
	br i1 %tobool, label %while.cond, label %while.end

while.end:		
	ret i64 %conv
}
