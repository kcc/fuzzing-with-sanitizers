


define i32 @test1(i32 %x) {





  %div = sdiv i32 %x, 8
  ret i32 %div
}

define i32 @test2(i32 %x) {





  %div = sdiv i32 %x, -8
  ret i32 %div
}

define i32 @test3(i32 %x) {





  %div = sdiv i32 %x, 32
  ret i32 %div
}

define i64 @test4(i64 %x) {





  %div = sdiv i64 %x, 8
  ret i64 %div
}

define i64 @test5(i64 %x) {





  %div = sdiv i64 %x, -8
  ret i64 %div
}

define i64 @test6(i64 %x) {





  %div = sdiv i64 %x, 64
  ret i64 %div
}

define i64 @test7(i64 %x) {






  %div = sdiv i64 %x, 281474976710656
  ret i64 %div
}

