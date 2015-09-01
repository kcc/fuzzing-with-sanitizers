

target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin12.0.0"









define i64 @_TFO6reduce1E5toRawfS0_FT_Si(i2) {
entry:
  switch i2 %0, label %1 [
    i2 0, label %2
    i2 1, label %3
    i2 -2, label %4
    i2 -1, label %5
  ]


  unreachable


  br label %6


  br label %6


  br label %6


  br label %6


  %7 = phi i64 [ 3, %5 ], [ 2, %4 ], [ 1, %3 ], [ 0, %2 ]
  ret i64 %7
}
