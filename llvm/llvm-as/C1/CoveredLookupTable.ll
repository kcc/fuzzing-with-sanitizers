


target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin12.0.0"










define i3 @coveredswitch_test(i3 %input) {
entry:
  switch i3 %input, label %bb8 [
    i3 0, label %bb7
    i3 1, label %bb
    i3 2, label %bb3
    i3 3, label %bb4
    i3 4, label %bb5
    i3 5, label %bb6
  ]

bb:                                               
  br label %bb8

bb3:                                              
  br label %bb8

bb4:                                              
  br label %bb8

bb5:                                              
  br label %bb8

bb6:                                              
  br label %bb8

bb7:                                              
  br label %bb8

bb8:                                              
  %result = phi i3 [ 0, %bb7 ], [ 1, %bb6 ], [ 2, %bb5 ], [ 3, %bb4 ], [ 4, %bb3 ], [ 5, %bb ], [ 6, %entry ]
  ret i3 %result
}
