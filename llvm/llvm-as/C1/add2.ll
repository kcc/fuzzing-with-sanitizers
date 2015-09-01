

define i64 @test1(i64 %A, i32 %B) {
        %tmp12 = zext i32 %B to i64
        %tmp3 = shl i64 %tmp12, 32
        %tmp5 = add i64 %tmp3, %A
        %tmp6 = and i64 %tmp5, 123
        ret i64 %tmp6



}

define i32 @test2(i32 %A) {
  %B = and i32 %A, 7
  %C = and i32 %A, 32
  %F = add i32 %B, %C
  ret i32 %F



}

define i32 @test3(i32 %A) {
  %B = and i32 %A, 128
  %C = lshr i32 %A, 30
  %F = add i32 %B, %C
  ret i32 %F





}

define i32 @test4(i32 %A) {
  %B = add nuw i32 %A, %A
  ret i32 %B



}

define <2 x i1> @test5(<2 x i1> %A, <2 x i1> %B) {
  %add = add <2 x i1> %A, %B
  ret <2 x i1> %add



}

define <2 x i64> @test6(<2 x i64> %A) {
  %shl = shl <2 x i64> %A, <i64 2, i64 3>
  %add = add <2 x i64> %shl, %A
  ret <2 x i64> %add



}

define <2 x i64> @test7(<2 x i64> %A) {
  %shl = shl <2 x i64> %A, <i64 2, i64 3>
  %mul = mul <2 x i64> %A, <i64 3, i64 4>
  %add = add <2 x i64> %shl, %mul
  ret <2 x i64> %add



}

define <2 x i64> @test8(<2 x i64> %A) {
  %xor = xor <2 x i64> %A, <i64 -1, i64 -1>
  %add = add <2 x i64> %xor, <i64 2, i64 3>
  ret <2 x i64> %add



}

define i16 @test9(i16 %a) {
       %b = mul i16 %a, 2
       %c = mul i16 %a, 32767
       %d = add i16 %b, %c
       ret i16 %d



}


define i32 @test10(i32 %x, i32 %y) {
  %shr = ashr i32 %x, 3
  %shr.not = or i32 %shr, -1431655766
  %neg = xor i32 %shr.not, 1431655765
  %add = add i32 %y, 1
  %add1 = add i32 %add, %neg
  ret i32 %add1





}


define i32 @test11(i32 %x, i32 %y) {
  %x.not = or i32 %x, -1431655766
  %neg = xor i32 %x.not, 1431655765
  %add = add i32 %y, 1
  %add1 = add i32 %add, %neg
  ret i32 %add1




}


define i32 @test12(i32 %x, i32 %y) {
  %add = add nsw i32 %y, 1
  %x.not = or i32 %x, -1431655766
  %neg = xor i32 %x.not, 1431655765
  %add1 = add nsw i32 %add, %neg
  ret i32 %add1




}


define i32 @test13(i32 %x, i32 %y) {
  %x.not = or i32 %x, -1431655767
  %neg = xor i32 %x.not, 1431655766
  %add = add i32 %y, 1
  %add1 = add i32 %add, %neg
  ret i32 %add1




}


define i32 @test14(i32 %x, i32 %y) {
  %add = add nsw i32 %y, 1
  %x.not = or i32 %x, -1431655767
  %neg = xor i32 %x.not, 1431655766
  %add1 = add nsw i32 %add, %neg
  ret i32 %add1




}


define i32 @test15(i32 %x, i32 %y) {
  %x.not = and i32 %x, -1431655767
  %neg = xor i32 %x.not, -1431655767
  %add = add i32 %y, 1
  %add1 = add i32 %add, %neg
  ret i32 %add1




}


define i32 @test16(i32 %x, i32 %y) {
  %add = add nsw i32 %y, 1
  %x.not = and i32 %x, -1431655767
  %neg = xor i32 %x.not, -1431655767
  %add1 = add nsw i32 %add, %neg
  ret i32 %add1




}


define i32 @test17(i32 %x, i32 %y) {
  %x.not = and i32 %x, -1431655766
  %add2 = xor i32 %x.not, -1431655765
  %add1 = add nsw i32 %add2, %y
  ret i32 %add1




}


define i32 @test18(i32 %x, i32 %y) {
  %add = add nsw i32 %y, 1
  %x.not = and i32 %x, -1431655766
  %neg = xor i32 %x.not, -1431655766
  %add1 = add nsw i32 %add, %neg
  ret i32 %add1




}

define i16 @add_nsw_mul_nsw(i16 %x) {
 %add1 = add nsw i16 %x, %x
 %add2 = add nsw i16 %add1, %x
 ret i16 %add2



}

define i16 @mul_add_to_mul_1(i16 %x) {
 %mul1 = mul nsw i16 %x, 8
 %add2 = add nsw i16 %x, %mul1
 ret i16 %add2



}

define i16 @mul_add_to_mul_2(i16 %x) {
 %mul1 = mul nsw i16 %x, 8
 %add2 = add nsw i16 %mul1, %x
 ret i16 %add2



}

define i16 @mul_add_to_mul_3(i16 %a) {
 %mul1 = mul i16 %a, 2
 %mul2 = mul i16 %a, 3
 %add = add nsw i16 %mul1, %mul2
 ret i16 %add



}

define i16 @mul_add_to_mul_4(i16 %a) {
 %mul1 = mul nsw i16 %a, 2
 %mul2 = mul nsw i16 %a, 7
 %add = add nsw i16 %mul1, %mul2
 ret i16 %add



}

define i16 @mul_add_to_mul_5(i16 %a) {
 %mul1 = mul nsw i16 %a, 3
 %mul2 = mul nsw i16 %a, 7
 %add = add nsw i16 %mul1, %mul2
 ret i16 %add



}

define i32 @mul_add_to_mul_6(i32 %x, i32 %y) {
  %mul1 = mul nsw i32 %x, %y
  %mul2 = mul nsw i32 %mul1, 5
  %add = add nsw i32 %mul1, %mul2
  ret i32 %add




}

define i16 @mul_add_to_mul_7(i16 %x) {
  %mul1 = mul nsw i16 %x, 32767
  %add2 = add nsw i16 %x, %mul1
  ret i16 %add2



}

define i16 @mul_add_to_mul_8(i16 %a) {
  %mul1 = mul nsw i16 %a, 16383
  %mul2 = mul nsw i16 %a, 16384
  %add = add nsw i16 %mul1, %mul2
  ret i16 %add



}

define i16 @mul_add_to_mul_9(i16 %a) {
  %mul1 = mul nsw i16 %a, 16384
  %mul2 = mul nsw i16 %a, 16384
  %add = add nsw i16 %mul1, %mul2
  ret i16 %add



}







define i16 @add_cttz(i16 %a) {

  
  
  
  
  
  
  
  %cttz = call i16 @llvm.cttz.i16(i16 %a, i1 true), !range !0
  %b = add i16 %cttz, -8

  ret i16 %b
}
declare i16 @llvm.cttz.i16(i16, i1)
!0 = !{i16 0, i16 8}



define i16 @add_cttz_2(i16 %a) {

  
  
  
  
  
  
  
  %cttz = call i16 @llvm.cttz.i16(i16 %a, i1 true), !range !1
  %b = add i16 %cttz, -16

  ret i16 %b
}
!1 = !{i16 0, i16 32}

define i32 @add_or_and(i32 %x, i32 %y) {
  %or = or i32 %x, %y
  %and = and i32 %x, %y
  %add = add i32 %or, %and
  ret i32 %add



}

define i32 @add_nsw_or_and(i32 %x, i32 %y) {
  %or = or i32 %x, %y
  %and = and i32 %x, %y
  %add = add nsw i32 %or, %and
  ret i32 %add



}

define i32 @add_nuw_or_and(i32 %x, i32 %y) {
  %or = or i32 %x, %y
  %and = and i32 %x, %y
  %add = add nuw i32 %or, %and
  ret i32 %add



}

define i32 @add_nuw_nsw_or_and(i32 %x, i32 %y) {
  %or = or i32 %x, %y
  %and = and i32 %x, %y
  %add = add nsw nuw i32 %or, %and
  ret i32 %add



}




define i8 @add_of_mul(i8 %x, i8 %y, i8 %z) {

 entry:
  %mA = mul nsw i8 %x, %y
  %mB = mul nsw i8 %x, %z

  %sum = add nsw i8 %mA, %mB
  ret i8 %sum
}

define i32 @add_of_selects(i1 %A, i32 %B) {
  %sel0 = select i1 %A, i32 0, i32 -2
  %sel1 = select i1 %A, i32 %B, i32 2
  %add = add i32 %sel0, %sel1
  ret i32 %add



}
