























@AGlobalVar = global i64 0, align 8
@.mystr = private unnamed_addr constant [6 x i8] c"hello\00", align 1

define i64 @foo(i64 %a) {
entry:
  %0 = load i64, i64* @AGlobalVar, align 4
  %1 = add i64 %a, %0
  %2 = call i64 @bar(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.mystr, i32 0, i32 0), i64 %1)
  ret i64 %2
}


declare i64 @bar(i8*, i64)
