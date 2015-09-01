

target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios8.0.0"









define i32 @test(i32* %ptr) {
bb:
  br label %.thread

.thread:                                          
  %loc = phi i32 [ %next_iter, %.thread ], [ 0, %bb ]
  %next_iter = lshr i32 %loc, 1
  %tmp340 = sub i32 %loc, 1
  %tmp341 = and i32 %tmp340, 1
  %tmp342 = icmp eq i32 %tmp341, 0
  br i1 %tmp342, label %bb343, label %.thread

bb343:                                            
  store i32 %tmp341, i32* %ptr, align 4
  ret i32 -1
}
