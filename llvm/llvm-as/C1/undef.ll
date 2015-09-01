



define i64 @test0() {
  %r = mul i64 undef, undef
  ret i64 %r
}



define i64 @test1() {
  %r = mul i64 3, undef
  ret i64 %r
}



define i64 @test2() {
  %r = mul i64 undef, 3
  ret i64 %r
}



define i64 @test3() {
  %r = mul i64 undef, 6
  ret i64 %r
}



define i64 @test4() {
  %r = mul i64 6, undef
  ret i64 %r
}



define i64 @test5() {
  %r = and i64 undef, undef
  ret i64 %r
}



define i64 @test6() {
  %r = or i64 undef, undef
  ret i64 %r
}



define i64 @test7() {
  %r = udiv i64 undef, 1
  ret i64 %r
}



define i64 @test8() {
  %r = sdiv i64 undef, 1
  ret i64 %r
}



define i64 @test9() {
  %r = urem i64 undef, 1
  ret i64 %r
}



define i64 @test10() {
  %r = srem i64 undef, 1
  ret i64 %r
}



define i64 @test11() {
  %r = shl i64 undef, undef
  ret i64 %r
}



define i64 @test11b(i64 %a) {
  %r = shl i64 %a, undef
  ret i64 %r
}



define i64 @test12() {
  %r = ashr i64 undef, undef
  ret i64 %r
}



define i64 @test12b(i64 %a) {
  %r = ashr i64 %a, undef
  ret i64 %r
}



define i64 @test13() {
  %r = lshr i64 undef, undef
  ret i64 %r
}



define i64 @test13b(i64 %a) {
  %r = lshr i64 %a, undef
  ret i64 %r
}



define i1 @test14() {
  %r = icmp slt i64 undef, undef
  ret i1 %r
}



define i1 @test15() {
  %r = icmp ult i64 undef, undef
  ret i1 %r
}



define i64 @test16(i64 %a) {
  %r = select i1 undef, i64 %a, i64 undef
  ret i64 %r
}



define i64 @test17(i64 %a) {
  %r = select i1 undef, i64 undef, i64 %a
  ret i64 %r
}



define i64 @test18(i64 %a) {
  %r = call i64 (i64) undef(i64 %a)
  ret i64 %r
}



define <4 x i8> @test19(<4 x i8> %a) {
  %b = shl <4 x i8> %a, <i8 8, i8 9, i8 undef, i8 -1>
  ret <4 x i8> %b
}



define i32 @test20(i32 %a) {
  %b = udiv i32 %a, 0
  ret i32 %b
}



define i32 @test21(i32 %a) {
  %b = sdiv i32 %a, 0
  ret i32 %b
}



define i32 @test22(i32 %a) {
  %b = ashr exact i32 undef, %a
  ret i32 %b
}



define i32 @test23(i32 %a) {
  %b = lshr exact i32 undef, %a
  ret i32 %b
}



define i32 @test24() {
  %b = udiv i32 undef, 0
  ret i32 %b
}



define i32 @test25() {
  %b = lshr i32 0, undef
  ret i32 %b
}



define i32 @test26() {
  %b = ashr i32 0, undef
  ret i32 %b
}



define i32 @test27() {
  %b = shl i32 0, undef
  ret i32 %b
}



define i32 @test28(i32 %a) {
  %b = shl nsw i32 undef, %a
  ret i32 %b
}



define i32 @test29(i32 %a) {
  %b = shl nuw i32 undef, %a
  ret i32 %b
}



define i32 @test30(i32 %a) {
  %b = shl nsw nuw i32 undef, %a
  ret i32 %b
}



define i32 @test31(i32 %a) {
  %b = shl i32 undef, %a
  ret i32 %b
}



define i32 @test32(i32 %a) {
  %b = shl i32 undef, 0
  ret i32 %b
}



define i32 @test33(i32 %a) {
  %b = ashr i32 undef, 0
  ret i32 %b
}



define i32 @test34(i32 %a) {
  %b = lshr i32 undef, 0
  ret i32 %b
}



define i32 @test35(<4 x i32> %V) {
  %b = extractelement <4 x i32> %V, i32 4
  ret i32 %b
}



define i32 @test36(i32 %V) {
  %b = extractelement <4 x i32> undef, i32 %V
  ret i32 %b
}
