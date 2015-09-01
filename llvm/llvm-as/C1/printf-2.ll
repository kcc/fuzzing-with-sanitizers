



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@hello_world = constant [13 x i8] c"hello world\0A\00"
@h = constant [2 x i8] c"h\00"
@percent_s = constant [4 x i8] c"%s\0A\00"

declare void @printf(i8*, ...)



define void @test_simplify1() {

  %fmt = getelementptr [2 x i8], [2 x i8]* @h, i32 0, i32 0
  call void (i8*, ...) @printf(i8* %fmt)

  ret void

}

define void @test_simplify2() {

  %fmt = getelementptr [13 x i8], [13 x i8]* @hello_world, i32 0, i32 0
  call void (i8*, ...) @printf(i8* %fmt)

  ret void

}

define void @test_simplify6() {

  %fmt = getelementptr [4 x i8], [4 x i8]* @percent_s, i32 0, i32 0
  %str = getelementptr [13 x i8], [13 x i8]* @hello_world, i32 0, i32 0
  call void (i8*, ...) @printf(i8* %fmt, i8* %str)

  ret void

}
