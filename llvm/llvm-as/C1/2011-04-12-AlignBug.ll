
target triple = "thumbv7-apple-darwin10.0.0"


@.v = private unnamed_addr constant <4 x i32> <i32 1, i32 2, i32 3, i32 4>, align 8

@.strA = private unnamed_addr constant [4 x i64] zeroinitializer

@.strB = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.strC = private unnamed_addr constant [4 x i8] c"baz\00", section "__TEXT,__cstring,cstring_literals", align 1
