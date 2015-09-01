



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

declare i32 @isdigit(i32)



define i32 @test_simplify1() {

  %ret = call i32 @isdigit(i32 47)
  ret i32 %ret

}

define i32 @test_simplify2() {

  %ret = call i32 @isdigit(i32 48)
  ret i32 %ret

}

define i32 @test_simplify3() {

  %ret = call i32 @isdigit(i32 57)
  ret i32 %ret

}

define i32 @test_simplify4() {

  %ret = call i32 @isdigit(i32 58)
  ret i32 %ret

}

define i32 @test_simplify5(i32 %x) {


  %ret = call i32 @isdigit(i32 %x)



  ret i32 %ret

}
