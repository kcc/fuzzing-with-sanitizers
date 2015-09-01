




target datalayout = "e-i64:64-f80:128-s:64-n8:16:32:64-S128"

@f = external constant void (i32)*

















define void @test(i32 %a, i32 %b, i32 %c) {
entry:
  %fct_f = load void (i32)*, void (i32)** @f, align 8
  tail call void %fct_f(i32 %a)
  tail call void %fct_f(i32 %b)
  tail call void %fct_f(i32 %c)
  ret void
}
