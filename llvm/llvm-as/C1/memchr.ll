


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32"

@hello = constant [14 x i8] c"hello world\5Cn\00"
@hellonull = constant [14 x i8] c"hello\00world\5Cn\00"
@null = constant [1 x i8] zeroinitializer
@newlines = constant [3 x i8] c"\0D\0A\00"
@single = constant [2 x i8] c"\1F\00"
@spaces = constant [4 x i8] c" \0D\0A\00"
@negative = constant [3 x i8] c"\FF\FE\00"
@chp = global i8* zeroinitializer

declare i8* @memchr(i8*, i32, i32)

define void @test1() {





  %str = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0
  %dst = call i8* @memchr(i8* %str, i32 119, i32 14)
  store i8* %dst, i8** @chp
  ret void
}

define void @test2() {





  %str = getelementptr [1 x i8], [1 x i8]* @null, i32 0, i32 0
  %dst = call i8* @memchr(i8* %str, i32 119, i32 1)
  store i8* %dst, i8** @chp
  ret void
}

define void @test3() {





  %src = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0
  %dst = call i8* @memchr(i8* %src, i32 0, i32 14)
  store i8* %dst, i8** @chp
  ret void
}

define void @test4(i32 %chr) {





  %src = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0
  %dst = call i8* @memchr(i8* %src, i32 %chr, i32 14)
  store i8* %dst, i8** @chp
  ret void
}

define void @test5() {





  %src = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0
  %dst = call i8* @memchr(i8* %src, i32 65280, i32 14)
  store i8* %dst, i8** @chp
  ret void
}

define void @test6() {





  %src = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0

  %dst = call i8* @memchr(i8* %src, i32 119, i32 100)
  store i8* %dst, i8** @chp
  ret void
}

define void @test7() {





  %src = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0

  %dst = call i8* @memchr(i8* %src, i32 120, i32 100)
  store i8* %dst, i8** @chp
  ret void
}

define void @test8() {





  %str = getelementptr [14 x i8], [14 x i8]* @hellonull, i32 0, i32 0
  %dst = call i8* @memchr(i8* %str, i32 119, i32 14)
  store i8* %dst, i8** @chp
  ret void
}

define void @test9() {





  %str = getelementptr [14 x i8], [14 x i8]* @hellonull, i32 0, i32 2
  %dst = call i8* @memchr(i8* %str, i32 119, i32 12)
  store i8* %dst, i8** @chp
  ret void
}

define void @test10() {





  %str = getelementptr [14 x i8], [14 x i8]* @hello, i32 0, i32 0
  %dst = call i8* @memchr(i8* %str, i32 119, i32 6)
  store i8* %dst, i8** @chp
  ret void
}


define i1 @test11(i32 %C) {









  %dst = call i8* @memchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @newlines, i64 0, i64 0), i32 %C, i32 2)
  %cmp = icmp ne i8* %dst, null
  ret i1 %cmp
}


define i1 @test12(i32 %C) {





  %dst = call i8* @memchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @spaces, i64 0, i64 0), i32 %C, i32 3)
  %cmp = icmp ne i8* %dst, null
  ret i1 %cmp
}

define i1 @test13(i32 %C) {








  %dst = call i8* @memchr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @single, i64 0, i64 0), i32 %C, i32 2)
  %cmp = icmp ne i8* %dst, null
  ret i1 %cmp
}

define i1 @test14(i32 %C) {




  %dst = call i8* @memchr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @single, i64 0, i64 0), i32 %C, i32 1)
  %cmp = icmp ne i8* %dst, null
  ret i1 %cmp
}

define i1 @test15(i32 %C) {





  %dst = call i8* @memchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @negative, i64 0, i64 0), i32 %C, i32 3)
  %cmp = icmp ne i8* %dst, null
  ret i1 %cmp
}
