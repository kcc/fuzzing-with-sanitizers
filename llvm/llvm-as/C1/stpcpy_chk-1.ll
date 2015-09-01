




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@a = common global [60 x i8] zeroinitializer, align 1
@b = common global [60 x i8] zeroinitializer, align 1
@.str = private constant [12 x i8] c"abcdefghijk\00"



define i8* @test_simplify1() {

  %dst = getelementptr inbounds [60 x i8], [60 x i8]* @a, i32 0, i32 0
  %src = getelementptr inbounds [12 x i8], [12 x i8]* @.str, i32 0, i32 0



  %ret = call i8* @__stpcpy_chk(i8* %dst, i8* %src, i32 60)
  ret i8* %ret
}

define i8* @test_simplify2() {

  %dst = getelementptr inbounds [60 x i8], [60 x i8]* @a, i32 0, i32 0
  %src = getelementptr inbounds [12 x i8], [12 x i8]* @.str, i32 0, i32 0



  %ret = call i8* @__stpcpy_chk(i8* %dst, i8* %src, i32 12)
  ret i8* %ret
}

define i8* @test_simplify3() {

  %dst = getelementptr inbounds [60 x i8], [60 x i8]* @a, i32 0, i32 0
  %src = getelementptr inbounds [12 x i8], [12 x i8]* @.str, i32 0, i32 0



  %ret = call i8* @__stpcpy_chk(i8* %dst, i8* %src, i32 -1)
  ret i8* %ret
}



define i8* @test_simplify4() {

  %dst = getelementptr inbounds [60 x i8], [60 x i8]* @a, i32 0, i32 0
  %src = getelementptr inbounds [60 x i8], [60 x i8]* @b, i32 0, i32 0



  %ret = call i8* @__stpcpy_chk(i8* %dst, i8* %src, i32 -1)
  ret i8* %ret
}



define i8* @test_simplify5() {

  %dst = getelementptr inbounds [60 x i8], [60 x i8]* @a, i32 0, i32 0
  %src = getelementptr inbounds [12 x i8], [12 x i8]* @.str, i32 0, i32 0




  %len = call i32 @llvm.objectsize.i32.p0i8(i8* %dst, i1 false)
  %ret = call i8* @__stpcpy_chk(i8* %dst, i8* %src, i32 %len)
  ret i8* %ret
}



define i8* @test_simplify6() {

  %dst = getelementptr inbounds [60 x i8], [60 x i8]* @a, i32 0, i32 0




  %len = call i32 @llvm.objectsize.i32.p0i8(i8* %dst, i1 false)
  %ret = call i8* @__stpcpy_chk(i8* %dst, i8* %dst, i32 %len)
  ret i8* %ret
}



define i8* @test_no_simplify1() {

  %dst = getelementptr inbounds [60 x i8], [60 x i8]* @a, i32 0, i32 0
  %src = getelementptr inbounds [60 x i8], [60 x i8]* @b, i32 0, i32 0



  %ret = call i8* @__stpcpy_chk(i8* %dst, i8* %src, i32 8)
  ret i8* %ret
}

declare i8* @__stpcpy_chk(i8*, i8*, i32) nounwind
declare i32 @llvm.objectsize.i32.p0i8(i8*, i1) nounwind readonly
