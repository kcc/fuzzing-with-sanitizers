

define i32 @test1(i32 %x, i32 %y) nounwind {
  %or = or i32 %x, %y
  %not = xor i32 %or, -1
  %z = or i32 %x, %not
  ret i32 %z




}

define i32 @test2(i32 %x, i32 %y) nounwind {
  %or = or i32 %x, %y
  %not = xor i32 %or, -1
  %z = or i32 %y, %not
  ret i32 %z




}

define i32 @test3(i32 %x, i32 %y) nounwind {
  %xor = xor i32 %x, %y
  %not = xor i32 %xor, -1
  %z = or i32 %x, %not
  ret i32 %z




}

define i32 @test4(i32 %x, i32 %y) nounwind {
  %xor = xor i32 %x, %y
  %not = xor i32 %xor, -1
  %z = or i32 %y, %not
  ret i32 %z




}

define i32 @test5(i32 %x, i32 %y) nounwind {
  %and = and i32 %x, %y
  %not = xor i32 %and, -1
  %z = or i32 %x, %not
  ret i32 %z


}

define i32 @test6(i32 %x, i32 %y) nounwind {
  %and = and i32 %x, %y
  %not = xor i32 %and, -1
  %z = or i32 %y, %not
  ret i32 %z


}

define i32 @test7(i32 %x, i32 %y) nounwind {
  %xor = xor i32 %x, %y
  %z = or i32 %y, %xor
  ret i32 %z



}

define i32 @test8(i32 %x, i32 %y) nounwind {
  %not = xor i32 %y, -1
  %xor = xor i32 %x, %not
  %z = or i32 %y, %xor
  ret i32 %z




}

define i32 @test9(i32 %x, i32 %y) nounwind {
  %not = xor i32 %x, -1
  %xor = xor i32 %not, %y
  %z = or i32 %x, %xor
  ret i32 %z




}

define i32 @test10(i32 %A, i32 %B) {
  %xor1 = xor i32 %B, %A
  %not = xor i32 %A, -1
  %xor2 = xor i32 %not, %B
  %or = or i32 %xor1, %xor2
  ret i32 %or


}


define i32 @test11(i32 %x, i32 %y) {
 %or = or i32 %x, %y
 %neg = xor i32 %x, -1
 %xor = xor i32 %neg, %y
 %and = and i32 %or, %xor
 ret i32 %and



}


define i32 @test12(i32 %x, i32 %y) {
 %neg = xor i32 %x, -1
 %xor = xor i32 %neg, %y
 %or = or i32 %x, %y
 %and = and i32 %xor, %or
 ret i32 %and



}


define i32 @test13(i32 %x, i32 %y) {
  %1 = xor i32 %y, %x
  %2 = or i32 %y, %x
  %3 = xor i32 %2, %1
  ret i32 %3



}


define i32 @test14(i32 %x, i32 %y) {
  %noty = xor i32 %y, -1
  %notx = xor i32 %x, -1
  %or1 = or i32 %x, %noty
  %or2 = or i32 %notx, %y
  %xor = xor i32 %or1, %or2
  ret i32 %xor



}


define i32 @test15(i32 %x, i32 %y) {
  %noty = xor i32 %y, -1
  %notx = xor i32 %x, -1
  %and1 = and i32 %x, %noty
  %and2 = and i32 %notx, %y
  %xor = xor i32 %and1, %and2
  ret i32 %xor



}

define i32 @test16(i32 %a, i32 %b) {
  %or = xor i32 %a, %b
  %and1 = and i32 %or, 1
  %and2 = and i32 %b, -2
  %xor = or i32 %and1, %and2
  ret i32 %xor




}
