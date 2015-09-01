


target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

declare i64 @bar(i1)

define i64 @foo(i8* %arg) {

top:
  %0 = load i8, i8* %arg

  %1 = trunc i8 %0 to i1

  %2 = call i64 @bar(i1 %1)

  ret i64 %2
}
