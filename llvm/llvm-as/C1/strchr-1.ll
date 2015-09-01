


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32"

@hello = constant [14 x i8] c"hello world\5Cn\00"
@null = constant [1 x i8] zeroinitializer
@newlines = constant [3 x i8] c"\0D\0A\00"
@chp = global i8* zeroinitializer

declare i8* @strchr(i8*, i32)

define void @test_simplify1() {




  %str = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0
  %dst = call i8* @strchr(i8* %str, i32 119)
  store i8* %dst, i8** @chp
  ret void
}

define void @test_simplify2() {




  %str = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0
  %dst = call i8* @strchr(i8* %str, i32 119)
  store i8* %dst, i8** @chp
  ret void
}

define void @test_simplify3() {




  %src = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0
  %dst = call i8* @strchr(i8* %src, i32 0)
  store i8* %dst, i8** @chp
  ret void
}

define void @test_simplify4(i32 %chr) {




  %src = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0
  %dst = call i8* @strchr(i8* %src, i32 %chr)
  store i8* %dst, i8** @chp
  ret void
}

define void @test_simplify5() {




  %src = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0
  %dst = call i8* @strchr(i8* %src, i32 65280)
  store i8* %dst, i8** @chp
  ret void
}


define void @test_simplify6(i8* %str) {






  %dst = call i8* @strchr(i8* %str, i32 0)
  store i8* %dst, i8** @chp
  ret void
}


define i1 @test_simplify7(i32 %C) {









  %dst = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @newlines, i64 0, i64 0), i32 %C)
  %cmp = icmp ne i8* %dst, null
  ret i1 %cmp
}
