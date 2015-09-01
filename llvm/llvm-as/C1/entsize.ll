



@.str1 = private unnamed_addr constant [6 x i8] c"tring\00"
@.str2 = private unnamed_addr constant [7 x i8] c"String\00"
@.c8a = private unnamed_addr constant [1 x i64] [i64 42]
@.c8b = private unnamed_addr constant [1 x i64] [i64 42]

define i32 @main() nounwind {
  %1 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str1, i32 0, i32 0))
  %2 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str2, i32 0, i32 0))
  call void @foo(i64* getelementptr inbounds ([1 x i64], [1 x i64]* @.c8a, i32 0, i32 0))
  call void @foo(i64* getelementptr inbounds ([1 x i64], [1 x i64]* @.c8b, i32 0, i32 0))
  ret i32 0
}

declare i32 @puts(i8* nocapture) nounwind
declare void @foo(i64* nocapture) nounwind



































