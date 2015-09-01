


define i32 @test1(i32 %x) nounwind {
  %and = shl i32 %x, 10
  %shl = and i32 %and, 31744
  ret i32 %shl



}

define i32 @test2(i32 %x) nounwind {
  %or = shl i32 %x, 10
  %shl = or i32 %or, 31744
  ret i32 %shl



}

define i32 @test3(i32 %x) nounwind {
  %xor = shl i32 %x, 10
  %shl = xor i32 %xor, 31744
  ret i32 %shl



}

define i64 @test4(i64 %x) nounwind {
  %and = shl i64 %x, 40
  %shl = and i64 %and, 264982302294016
  ret i64 %shl



}

define i64 @test5(i64 %x) nounwind {
  %and = shl i64 %x, 40
  %shl = and i64 %and, 34084860461056
  ret i64 %shl



}

define i64 @test6(i64 %x) nounwind {
  %and = shl i64 %x, 32
  %shl = and i64 %and, -281474976710656
  ret i64 %shl



}

define i64 @test7(i64 %x) nounwind {
  %or = shl i64 %x, 40
  %shl = or i64 %or, 264982302294016
  ret i64 %shl



}

define i64 @test8(i64 %x) nounwind {
  %or = shl i64 %x, 40
  %shl = or i64 %or, 34084860461056
  ret i64 %shl



}

define i64 @test9(i64 %x) nounwind {
  %xor = shl i64 %x, 40
  %shl = xor i64 %xor, 264982302294016
  ret i64 %shl



}

define i64 @test10(i64 %x) nounwind {
  %xor = shl i64 %x, 40
  %shl = xor i64 %xor, 34084860461056
  ret i64 %shl



}

define i64 @test11(i64 %x) nounwind {
  %xor = shl i64 %x, 33
  %shl = xor i64 %xor, -562949953421312
  ret i64 %shl



}


define i32 @test12(i32 %x, i32* %y) nounwind {
  %and = shl i32 %x, 1
  %shl = and i32 %and, 255
  store i32 %shl, i32* %y
  ret i32 %shl




}

define i64 @test13(i64 %x, i64* %y) nounwind {
  %and = shl i64 %x, 1
  %shl = and i64 %and, 255
  store i64 %shl, i64* %y
  ret i64 %shl




}
