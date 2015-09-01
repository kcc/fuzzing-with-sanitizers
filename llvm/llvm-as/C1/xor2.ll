




define i1 @test0(i32 %A) {


	%B = xor i32 %A, -2147483648
	%C = icmp sgt i32 %B, -1
	ret i1 %C
}

define i1 @test1(i32 %A) {


	%B = xor i32 %A, 12345
	%C = icmp slt i32 %B, 0
	ret i1 %C
}


define i32 @test2(i32 %tmp1) {




        %ovm = and i32 %tmp1, 32
        %ov3 = add i32 %ovm, 145
        %ov110 = xor i32 %ov3, 153
        ret i32 %ov110
}

define i32 @test3(i32 %tmp1) {




  %ovm = or i32 %tmp1, 145 
  %ov31 = and i32 %ovm, 177
  %ov110 = xor i32 %ov31, 153
  ret i32 %ov110
}

define i32 @test4(i32 %A, i32 %B) {
	%1 = xor i32 %A, -1
	%2 = ashr i32 %1, %B
	%3 = xor i32 %2, -1
	ret i32 %3



}




define i32 @test5(i32 %val1) {
test5:
  %xor = xor i32 %val1, 1234
  %shr = lshr i32 %xor, 8
  %xor1 = xor i32 %shr, 1
  %add = add i32 %xor1, %xor
  ret i32 %add



}







define i32 @test6(i32 %x) {
  %xor = xor i32 %x, 1234
  %shr = lshr i32 %xor, 16
  %add = add i32 %shr, %xor
  ret i32 %add



}



define i32 @test7(i32 %a, i32 %b) {
 %or = or i32 %a, %b
 %neg = xor i32 %a, -1
 %xor = xor i32 %or, %neg
 ret i32 %xor




}


define i32 @test8(i32 %a, i32 %b) {
 %neg = xor i32 %a, -1
 %or = or i32 %a, %b
 %xor = xor i32 %neg, %or
 ret i32 %xor




}


define i32 @test9(i32 %b, i32 %c) {
 %and = and i32 %b, %c
 %xor = xor i32 %b, %c
 %xor2 = xor i32 %and, %xor
 ret i32 %xor2


}


define i32 @test10(i32 %b, i32 %c) {
 %xor = xor i32 %b, %c
 %and = and i32 %b, %c
 %xor2 = xor i32 %xor, %and
 ret i32 %xor2


}

define i32 @test11(i32 %A, i32 %B) {
  %xor1 = xor i32 %B, %A
  %not = xor i32 %A, -1
  %xor2 = xor i32 %not, %B
  %and = and i32 %xor1, %xor2
  ret i32 %and


}

define i32 @test12(i32 %a, i32 %b) {
 %negb = xor i32 %b, -1
 %and = and i32 %a, %negb
 %nega = xor i32 %a, -1
 %xor = xor i32 %and, %nega
 ret i32 %xor



}

define i32 @test13(i32 %a, i32 %b) {
 %nega = xor i32 %a, -1
 %negb = xor i32 %b, -1
 %and = and i32 %a, %negb
 %xor = xor i32 %nega, %and
 ret i32 %xor



}


define i32 @test14(i32 %a, i32 %b, i32 %c) {
 %neg = xor i32 %a, %c
 %or = or i32 %a, %b
 %xor = xor i32 %neg, %or
 ret i32 %xor





}
