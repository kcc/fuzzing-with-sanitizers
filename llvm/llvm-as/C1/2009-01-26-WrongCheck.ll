


define void @foo(i32 inreg %x) {
	%t709 = select i1 false, i32 0, i32 %x		
	%t711 = add i32 %t709, 1		
	%t801 = icmp slt i32 %t711, 0		
	%t712 = zext i32 %t711 to i64		
	%t804 = select i1 %t801, i64 0, i64 %t712		
	store i64 %t804, i64* null
	%t815 = icmp slt i32 %t711, 0		
	%t814 = sext i32 %t711 to i64		
	%t816 = select i1 %t815, i64 0, i64 %t814		
	store i64 %t816, i64* null
	unreachable
}
