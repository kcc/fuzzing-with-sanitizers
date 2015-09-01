



define i32 @test1(i32 %X, i32 %Y) {
	%tmp1 = and i32 %X, 65535
	%tmp4 = shl i32 %Y, 16
	%tmp5 = or i32 %tmp4, %tmp1
	ret i32 %tmp5
}



define i32 @test2(i32 %X, i32 %Y) {
	%tmp1 = and i32 %X, 65535
	%tmp3 = shl i32 %Y, 12
	%tmp4 = and i32 %tmp3, -65536
	%tmp57 = or i32 %tmp4, %tmp1
	ret i32 %tmp57
}



define i32 @test3(i32 %X, i32 %Y) {
	%tmp19 = and i32 %X, 65535
	%tmp37 = shl i32 %Y, 18
	%tmp5 = or i32 %tmp37, %tmp19
	ret i32 %tmp5
}



define i32 @test4(i32 %X, i32 %Y) {
	%tmp1 = and i32 %X, 65535
	%tmp3 = and i32 %Y, -65536
	%tmp46 = or i32 %tmp3, %tmp1
	ret i32 %tmp46
}



define i32 @test5(i32 %X, i32 %Y) {
	%tmp17 = and i32 %X, -65536
	%tmp2 = bitcast i32 %Y to i32
	%tmp4 = lshr i32 %tmp2, 16
	%tmp5 = or i32 %tmp4, %tmp17
	ret i32 %tmp5
}



define i32 @test5a(i32 %X, i32 %Y) {
	%tmp110 = and i32 %X, -65536
	%tmp37 = lshr i32 %Y, 16
	%tmp39 = bitcast i32 %tmp37 to i32
	%tmp5 = or i32 %tmp39, %tmp110
	ret i32 %tmp5
}



define i32 @test6(i32 %X, i32 %Y) {
	%tmp1 = and i32 %X, -65536
	%tmp37 = lshr i32 %Y, 12
	%tmp38 = bitcast i32 %tmp37 to i32
	%tmp4 = and i32 %tmp38, 65535
	%tmp59 = or i32 %tmp4, %tmp1
	ret i32 %tmp59
}



define i32 @test7(i32 %X, i32 %Y) {
	%tmp1 = and i32 %X, -65536
	%tmp3 = ashr i32 %Y, 18
	%tmp4 = and i32 %tmp3, 65535
	%tmp57 = or i32 %tmp4, %tmp1
	ret i32 %tmp57
}






define i32 @test8(i32 %X, i32 %Y) {
	%tmp1 = and i32 %X, -65536
	%tmp3 = lshr i32 %Y, 22
	%tmp57 = or i32 %tmp3, %tmp1
	ret i32 %tmp57
}



define i32 @test9(i32 %src1, i32 %src2) {
entry:
    %tmp = and i32 %src1, -65536
    %tmp2 = lshr i32 %src2, 16
    %tmp3 = or i32 %tmp, %tmp2
    ret i32 %tmp3
}



define i32 @test10(i32 %src1, i32 %src2) {
entry:
    %tmp = and i32 %src1, -65536
    %tmp2 = ashr i32 %src2, 17
    %tmp3 = or i32 %tmp, %tmp2
    ret i32 %tmp3
}
