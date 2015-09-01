

target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin12.0.0"











define i64 @test(i3 %arg) {
entry:
  switch i3 %arg, label %Default [
    i3 -2, label %Label6
    i3 1, label %Label1
    i3 2, label %Label2
    i3 3, label %Label3
    i3 -4, label %Label4
    i3 -3, label %Label5
  ]

Default:
  %v1 = phi i64 [ 7, %Label6 ], [ 11, %Label5 ], [ 6, %Label4 ], [ 13, %Label3 ], [ 9, %Label2 ], [ 15, %Label1 ], [ 8, %entry ]
  %v2 = phi i64 [ 0, %Label6 ], [ 0, %Label5 ], [ 0, %Label4 ], [ 0, %Label3 ], [ 0, %Label2 ], [ 0, %Label1 ], [ 0, %entry ]
  %v3 = add i64 %v1, %v2
  ret i64 %v3

Label1:
  br label %Default

Label2:
  br label %Default

Label3:
  br label %Default

Label4:
  br label %Default

Label5:
  br label %Default

Label6:
  br label %Default
}
