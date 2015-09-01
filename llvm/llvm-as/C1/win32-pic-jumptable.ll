














target triple = "i686--windows-itanium"
define i32 @f(i64 %x) {
bb0:
  switch i64 %x, label %bb5 [
    i64 1, label %bb1
    i64 2, label %bb2
    i64 3, label %bb3
    i64 4, label %bb4
  ]
bb1:
  br label %bb5
bb2:
  br label %bb5
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %y = phi i32 [ 0, %bb0 ], [ 1, %bb1 ], [ 2, %bb2 ], [ 3, %bb3 ], [ 4, %bb4 ]
  ret i32 %y
}
