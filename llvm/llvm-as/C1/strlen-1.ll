



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@hello = constant [6 x i8] c"hello\00"
@longer = constant [7 x i8] c"longer\00"
@null = constant [1 x i8] zeroinitializer
@null_hello = constant [7 x i8] c"\00hello\00"
@nullstring = constant i8 0
@a = common global [32 x i8] zeroinitializer, align 1

declare i32 @strlen(i8*)



define i32 @test_simplify1() {

  %hello_p = getelementptr [6 x i8], [6 x i8]* @hello, i32 0, i32 0
  %hello_l = call i32 @strlen(i8* %hello_p)
  ret i32 %hello_l

}

define i32 @test_simplify2() {

  %null_p = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0
  %null_l = call i32 @strlen(i8* %null_p)
  ret i32 %null_l

}

define i32 @test_simplify3() {

  %null_hello_p = getelementptr [7 x i8], [7 x i8]* @null_hello, i32 0, i32 0
  %null_hello_l = call i32 @strlen(i8* %null_hello_p)
  ret i32 %null_hello_l

}

define i32 @test_simplify4() {

  %len = tail call i32 @strlen(i8* @nullstring) nounwind
  ret i32 %len

}



define i1 @test_simplify5() {

  %hello_p = getelementptr [6 x i8], [6 x i8]* @hello, i32 0, i32 0
  %hello_l = call i32 @strlen(i8* %hello_p)
  %eq_hello = icmp eq i32 %hello_l, 0
  ret i1 %eq_hello

}

define i1 @test_simplify6() {

  %null_p = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0
  %null_l = call i32 @strlen(i8* %null_p)
  %eq_null = icmp eq i32 %null_l, 0
  ret i1 %eq_null

}



define i1 @test_simplify7() {

  %hello_p = getelementptr [6 x i8], [6 x i8]* @hello, i32 0, i32 0
  %hello_l = call i32 @strlen(i8* %hello_p)
  %ne_hello = icmp ne i32 %hello_l, 0
  ret i1 %ne_hello

}

define i1 @test_simplify8() {

  %null_p = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0
  %null_l = call i32 @strlen(i8* %null_p)
  %ne_null = icmp ne i32 %null_l, 0
  ret i1 %ne_null

}

define i32 @test_simplify9(i1 %x) {

  %hello = getelementptr [6 x i8], [6 x i8]* @hello, i32 0, i32 0
  %longer = getelementptr [7 x i8], [7 x i8]* @longer, i32 0, i32 0
  %s = select i1 %x, i8* %hello, i8* %longer
  %l = call i32 @strlen(i8* %s)

  ret i32 %l

}



define i32 @test_no_simplify1() {

  %a_p = getelementptr [32 x i8], [32 x i8]* @a, i32 0, i32 0
  %a_l = call i32 @strlen(i8* %a_p)

  ret i32 %a_l

}
