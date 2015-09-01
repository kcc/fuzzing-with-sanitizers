

target datalayout = "e-m:o-p:32:32-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "thumbv7s-unknown-unknown"






declare void @foo(i32, i32) #0



define void @test(i32 %arg) {
  %cmp58 = icmp slt i32 %arg, 0
  %sub62 = sub nsw i32 0, %arg
  %l.1 = select i1 %cmp58, i32 %sub62, i32 %arg
  call void @foo(i32 %l.1, i32 %arg) #0
  unreachable
}

attributes #0 = { noreturn }
