




target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @foo() #0 {
entry:
  %call = call i32 (...) @baz()
  ret i32 %call


}
declare i32 @baz(...) #0

define i32 @bar() #1 {
entry:
  %call = call i32 @foo()
  ret i32 %call


}

define i32 @qux() #0 {
entry:
  %call = call i32 @bar()
  ret i32 %call


}

attributes #0 = { "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #1 = { "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3" }
