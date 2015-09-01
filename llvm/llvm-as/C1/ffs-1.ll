




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

declare i32 @ffs(i32)
declare i32 @ffsl(i32)
declare i32 @ffsll(i64)



define i32 @test_simplify1() {

  %ret = call i32 @ffs(i32 0)
  ret i32 %ret

}

define i32 @test_simplify2() {

  %ret = call i32 @ffsl(i32 0)
  ret i32 %ret

}

define i32 @test_simplify3() {

  %ret = call i32 @ffsll(i64 0)
  ret i32 %ret

}



define i32 @test_simplify4() {

  %ret = call i32 @ffs(i32 1)
  ret i32 %ret

}

define i32 @test_simplify5() {

  %ret = call i32 @ffs(i32 2048)
  ret i32 %ret

}

define i32 @test_simplify6() {

  %ret = call i32 @ffs(i32 65536)
  ret i32 %ret

}

define i32 @test_simplify7() {

  %ret = call i32 @ffsl(i32 65536)
  ret i32 %ret

}

define i32 @test_simplify8() {

  %ret = call i32 @ffsll(i64 1024)
  ret i32 %ret

}

define i32 @test_simplify9() {

  %ret = call i32 @ffsll(i64 65536)
  ret i32 %ret

}

define i32 @test_simplify10() {

  %ret = call i32 @ffsll(i64 17179869184)
  ret i32 %ret

}

define i32 @test_simplify11() {

  %ret = call i32 @ffsll(i64 281474976710656)
  ret i32 %ret

}

define i32 @test_simplify12() {

  %ret = call i32 @ffsll(i64 1152921504606846976)
  ret i32 %ret

}



define i32 @test_simplify13(i32 %x) {

  %ret = call i32 @ffs(i32 %x)




  ret i32 %ret

}

define i32 @test_simplify14(i32 %x) {

  %ret = call i32 @ffsl(i32 %x)




  ret i32 %ret

}

define i32 @test_simplify15(i64 %x) {

  %ret = call i32 @ffsll(i64 %x)





  ret i32 %ret

}
