



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@hello = constant [12 x i8] c"hello world\00"
@w = constant [2 x i8] c"w\00"
@null = constant [1 x i8] zeroinitializer

declare i8* @strpbrk(i8*, i8*)



define i8* @test_simplify1(i8* %str) {

  %pat = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0

  %ret = call i8* @strpbrk(i8* %str, i8* %pat)
  ret i8* %ret

}



define i8* @test_simplify2(i8* %pat) {

  %str = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0

  %ret = call i8* @strpbrk(i8* %str, i8* %pat)
  ret i8* %ret

}



define i8* @test_simplify3() {

  %str = getelementptr [12 x i8], [12 x i8]* @hello, i32 0, i32 0
  %pat = getelementptr [2 x i8], [2 x i8]* @w, i32 0, i32 0

  %ret = call i8* @strpbrk(i8* %str, i8* %pat)
  ret i8* %ret

}



define i8* @test_simplify4(i8* %str) {

  %pat = getelementptr [2 x i8], [2 x i8]* @w, i32 0, i32 0

  %ret = call i8* @strpbrk(i8* %str, i8* %pat)

  ret i8* %ret

}



define i8* @test_no_simplify1(i8* %str, i8* %pat) {


  %ret = call i8* @strpbrk(i8* %str, i8* %pat)

  ret i8* %ret

}
