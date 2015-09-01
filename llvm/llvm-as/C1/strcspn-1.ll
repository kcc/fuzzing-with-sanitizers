



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"

@abcba = constant [6 x i8] c"abcba\00"
@abc = constant [4 x i8] c"abc\00"
@null = constant [1 x i8] zeroinitializer

declare i64 @strcspn(i8*, i8*)



define i64 @test_simplify1(i8* %str) {

  %pat = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0

  %ret = call i64 @strcspn(i8* %str, i8* %pat)

  ret i64 %ret

}



define i64 @test_simplify2(i8* %pat) {

  %str = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0

  %ret = call i64 @strcspn(i8* %str, i8* %pat)
  ret i64 %ret

}



define i64 @test_simplify3() {

  %str = getelementptr [6 x i8], [6 x i8]* @abcba, i32 0, i32 0
  %pat = getelementptr [4 x i8], [4 x i8]* @abc, i32 0, i32 0

  %ret = call i64 @strcspn(i8* %str, i8* %pat)
  ret i64 %ret

}



define i64 @test_no_simplify1(i8* %str, i8* %pat) {


  %ret = call i64 @strcspn(i8* %str, i8* %pat)

  ret i64 %ret

}
