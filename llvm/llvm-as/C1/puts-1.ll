



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@empty = constant [1 x i8] zeroinitializer

declare i32 @puts(i8*)



define void @test_simplify1() {

  %str = getelementptr [1 x i8], [1 x i8]* @empty, i32 0, i32 0
  call i32 @puts(i8* %str)

  ret void

}



define i32 @test_no_simplify1() {

  %str = getelementptr [1 x i8], [1 x i8]* @empty, i32 0, i32 0
  %ret = call i32 @puts(i8* %str)

  ret i32 %ret

}
