

target datalayout = "e-m:o-p:32:32-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "thumbv7-apple-ios8.0.0"









declare void @foo(i32, i32)


define i32 @test(i32 %tmp3, i32 %tmp9) #0 {
bb:
  %tmp4 = lshr i32 %tmp3, 2
  %tmp10 = lshr i32 %tmp9, 2
  call void @foo(i32 %tmp10, i32 %tmp4)
  unreachable
}

attributes #0 = { minsize }
