



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

declare i32 @abs(i32)
declare i64 @labs(i64)
declare i64 @llabs(i64)



define i32 @test_simplify1(i32 %x) {

  %ret = call i32 @abs(i32 %x)



  ret i32 %ret

}

define i64 @test_simplify2(i64 %x) {

  %ret = call i64 @labs(i64 %x)



  ret i64 %ret

}

define i64 @test_simplify3(i64 %x) {

  %ret = call i64 @llabs(i64 %x)



  ret i64 %ret

}
