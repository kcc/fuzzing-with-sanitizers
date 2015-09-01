




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@hello_world = constant [13 x i8] c"hello world\0A\00"
@null = constant [1 x i8] zeroinitializer
@null_hello = constant [7 x i8] c"\00hello\00"
@h = constant [2 x i8] c"h\00"
@percent_c = constant [3 x i8] c"%c\00"
@percent_d = constant [3 x i8] c"%d\00"
@percent_f = constant [3 x i8] c"%f\00"
@percent_s = constant [3 x i8] c"%s\00"

declare i32 @sprintf(i8*, i8*, ...)



define void @test_simplify1(i8* %dst) {

  %fmt = getelementptr [13 x i8], [13 x i8]* @hello_world, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %dst, i8* %fmt)

  ret void

}

define void @test_simplify2(i8* %dst) {

  %fmt = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %dst, i8* %fmt)

  ret void

}

define void @test_simplify3(i8* %dst) {

  %fmt = getelementptr [7 x i8], [7 x i8]* @null_hello, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %dst, i8* %fmt)

  ret void

}



define void @test_simplify4(i8* %dst) {

  %fmt = getelementptr [3 x i8], [3 x i8]* @percent_c, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %dst, i8* %fmt, i8 104)



  ret void

}



define void @test_simplify5(i8* %dst, i8* %str) {

  %fmt = getelementptr [3 x i8], [3 x i8]* @percent_s, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %dst, i8* %fmt, i8* %str)



  ret void

}



define void @test_simplify6(i8* %dst) {

  %fmt = getelementptr [3 x i8], [3 x i8]* @percent_d, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %dst, i8* %fmt, i32 187)

  ret void

}

define void @test_no_simplify1(i8* %dst) {

  %fmt = getelementptr [3 x i8], [3 x i8]* @percent_f, i32 0, i32 0
  call i32 (i8*, i8*, ...) @sprintf(i8* %dst, i8* %fmt, double 1.87)

  ret void

}

define void @test_no_simplify2(i8* %dst, i8* %fmt, double %d) {

  call i32 (i8*, i8*, ...) @sprintf(i8* %dst, i8* %fmt, double %d)

  ret void

}
