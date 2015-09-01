


target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%Foo = type { [125 x i8] }

declare i32 @llvm.eh.sjlj.setjmp(i8*) nounwind

declare void @whatever(i64, %Foo*, i8**, i8*, i8*, i32)  #0

attributes #0 = { nounwind uwtable "no-frame-pointer-elim"="true" }

define i32 @test1(i64 %n, %Foo* byval nocapture readnone align 8 %f) #0 {
entry:
  %buf = alloca [5 x i8*], align 16
  %p = alloca i8*, align 8
  %q = alloca i8, align 64
  %r = bitcast [5 x i8*]* %buf to i8*
  %s = alloca i8, i64 %n, align 1
  store i8* %s, i8** %p, align 8
  %t = call i32 @llvm.eh.sjlj.setjmp(i8* %s)
  call void @whatever(i64 %n, %Foo* %f, i8** %p, i8* %q, i8* %s, i32 %t) #1
  ret i32 0










}


