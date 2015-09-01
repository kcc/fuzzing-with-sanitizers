


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@a = private global [60 x i8] zeroinitializer, align 1 
@.str = private constant [8 x i8] c"abcdefg\00"   
define i32 @foo() nounwind {


  %1 = call i32 @llvm.objectsize.i32.p0i8(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @a, i32 0, i32 0), i1 false)
  ret i32 %1
}

define i8* @bar() nounwind {

entry:
  %retval = alloca i8*
  %0 = call i32 @llvm.objectsize.i32.p0i8(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @a, i32 0, i32 0), i1 false)
  %cmp = icmp ne i32 %0, -1

  br i1 %cmp, label %cond.true, label %cond.false

cond.true:
  %1 = load i8*, i8** %retval
  ret i8* %1

cond.false:
  %2 = load i8*, i8** %retval
  ret i8* %2
}

define i32 @f() nounwind {


  %1 = call i32 @llvm.objectsize.i32.p0i8(i8* getelementptr ([60 x i8], [60 x i8]* @a, i32 1, i32 0), i1 false)
  ret i32 %1
}

@window = external global [0 x i8]

define i1 @baz() nounwind {


  %1 = tail call i32 @llvm.objectsize.i32.p0i8(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @window, i32 0, i32 0), i1 false)
  %2 = icmp eq i32 %1, -1
  ret i1 %2
}

define void @test1(i8* %q, i32 %x) nounwind noinline {


entry:
  %0 = call i32 @llvm.objectsize.i32.p0i8(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @window, i32 0, i32 10), i1 false) 
  %1 = icmp eq i32 %0, -1                         
  br i1 %1, label %"47", label %"46"

"46":                                             
  unreachable

"47":                                             
  unreachable
}

@.str5 = private constant [9 x i32] [i32 97, i32 98, i32 99, i32 100, i32 0, i32
 101, i32 102, i32 103, i32 0], align 4
define i32 @test2() nounwind {


  %1 = call i32 @llvm.objectsize.i32.p0i8(i8* getelementptr (i8, i8* bitcast ([9 x i32]* @.str5 to i8*), i32 2), i1 false)
  ret i32 %1
}


@array = internal global [480 x float] zeroinitializer 

declare i8* @__memcpy_chk(i8*, i8*, i32, i32) nounwind

declare i32 @llvm.objectsize.i32.p0i8(i8*, i1) nounwind readonly

declare i8* @__inline_memcpy_chk(i8*, i8*, i32) nounwind inlinehint

define void @test3() nounwind {

entry:
  br i1 undef, label %bb11, label %bb12

bb11:
  %0 = getelementptr inbounds float, float* getelementptr inbounds ([480 x float], [480 x float]* @array, i32 0, i32 128), i32 -127 
  %1 = bitcast float* %0 to i8*                   
  %2 = call i32 @llvm.objectsize.i32.p0i8(i8* %1, i1 false) 
  %3 = call i8* @__memcpy_chk(i8* undef, i8* undef, i32 512, i32 %2) nounwind 

  unreachable

bb12:
  %4 = getelementptr inbounds float, float* getelementptr inbounds ([480 x float], [480 x float]* @array, i32 0, i32 128), i32 -127 
  %5 = bitcast float* %4 to i8*                   
  %6 = call i8* @__inline_memcpy_chk(i8* %5, i8* undef, i32 512) nounwind inlinehint 

  unreachable
}



%struct.data = type { [100 x i32], [100 x i32], [1024 x i8] }

define i32 @test4(i8** %esc) nounwind ssp {

entry:
  %0 = alloca %struct.data, align 8
  %1 = bitcast %struct.data* %0 to i8*
  %2 = call i32 @llvm.objectsize.i32.p0i8(i8* %1, i1 false) nounwind


  %3 = call i8* @__memset_chk(i8* %1, i32 0, i32 1824, i32 %2) nounwind
  store i8* %1, i8** %esc
  ret i32 0
}


@s = external global i8*

define i8* @test5(i32 %n) nounwind ssp {

entry:
  %0 = tail call noalias i8* @malloc(i32 20) nounwind
  %1 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %0, i1 false)
  %2 = load i8*, i8** @s, align 8


  %3 = tail call i8* @__memcpy_chk(i8* %0, i8* %2, i32 10, i32 %1) nounwind
  ret i8* %0
}

define void @test6(i32 %n) nounwind ssp {

entry:
  %0 = tail call noalias i8* @malloc(i32 20) nounwind
  %1 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %0, i1 false)
  %2 = load i8*, i8** @s, align 8


  %3 = tail call i8* @__memcpy_chk(i8* %0, i8* %2, i32 30, i32 %1) nounwind
  ret void
}

declare i8* @__memset_chk(i8*, i32, i32, i32) nounwind

declare noalias i8* @malloc(i32) nounwind

define i32 @test7(i8** %esc) {

  %alloc = call noalias i8* @malloc(i32 48) nounwind
  store i8* %alloc, i8** %esc
  %gep = getelementptr inbounds i8, i8* %alloc, i32 16
  %objsize = call i32 @llvm.objectsize.i32.p0i8(i8* %gep, i1 false) nounwind readonly

  ret i32 %objsize
}

declare noalias i8* @calloc(i32, i32) nounwind

define i32 @test8(i8** %esc) {

  %alloc = call noalias i8* @calloc(i32 5, i32 7) nounwind
  store i8* %alloc, i8** %esc
  %gep = getelementptr inbounds i8, i8* %alloc, i32 5
  %objsize = call i32 @llvm.objectsize.i32.p0i8(i8* %gep, i1 false) nounwind readonly

  ret i32 %objsize
}

declare noalias i8* @strdup(i8* nocapture) nounwind
declare noalias i8* @strndup(i8* nocapture, i32) nounwind


define i32 @test9(i8** %esc) {
  %call = tail call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) nounwind
  store i8* %call, i8** %esc, align 8
  %1 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %call, i1 true)

  ret i32 %1
}


define i32 @test10(i8** %esc) {
  %call = tail call i8* @strndup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 3) nounwind
  store i8* %call, i8** %esc, align 8
  %1 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %call, i1 true)

  ret i32 %1
}


define i32 @test11(i8** %esc) {
  %call = tail call i8* @strndup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7) nounwind
  store i8* %call, i8** %esc, align 8
  %1 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %call, i1 true)

  ret i32 %1
}


define i32 @test12(i8** %esc) {
  %call = tail call i8* @strndup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8) nounwind
  store i8* %call, i8** %esc, align 8
  %1 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %call, i1 true)

  ret i32 %1
}


define i32 @test13(i8** %esc) {
  %call = tail call i8* @strndup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 57) nounwind
  store i8* %call, i8** %esc, align 8
  %1 = tail call i32 @llvm.objectsize.i32.p0i8(i8* %call, i1 true)

  ret i32 %1
}

@globalalias = internal alias [60 x i8]* @a



define i32 @test18() {
  %bc = bitcast [60 x i8]* @globalalias to i8*
  %1 = call i32 @llvm.objectsize.i32.p0i8(i8* %bc, i1 false)
  ret i32 %1
}

@globalalias2 = weak alias [60 x i8]* @a



define i32 @test19() {
  %bc = bitcast [60 x i8]* @globalalias2 to i8*
  %1 = call i32 @llvm.objectsize.i32.p0i8(i8* %bc, i1 false)
  ret i32 %1
}

