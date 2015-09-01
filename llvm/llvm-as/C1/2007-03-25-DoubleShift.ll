

define i1 @test(i32 %tmp13) {
entry:
	%tmp14 = shl i32 %tmp13, 12		
	%tmp15 = lshr i32 %tmp14, 12		
	%res = icmp ne i32 %tmp15, 0		
        ret i1 %res
}
