





define void @foo(i32 %x, i32* %to) {









entry:
  switch i32 %x, label %default [
    i32 0, label %bb0
    i32 1, label %bb1
    i32 2, label %bb2
    i32 3, label %bb3
    i32 4, label %bb4
    i32 5, label %bb4
  ]
bb0:
  store i32 0, i32* %to
  br label %exit
bb1:
  store i32 1, i32* %to
  br label %exit
bb2:
  store i32 2, i32* %to
  br label %exit
bb3:
  store i32 3, i32* %to
  br label %exit
bb4:
  store i32 4, i32* %to
  br label %exit
exit:
  ret void
default:
  unreachable







}



define void @bar(i32 %x, i32* %to) {




entry:
  switch i32 %x, label %default [
    i32 0, label %bb0
    i32 1, label %bb1
    i32 2, label %bb2
    i32 3, label %bb3
    i32 4, label %bb4
    i32 5, label %bb4
  ], !prof !1
bb0:
  store i32 0, i32* %to
  br label %exit
bb1:
  store i32 1, i32* %to
  br label %exit
bb2:
  store i32 2, i32* %to
  br label %exit
bb3:
  store i32 3, i32* %to
  br label %exit
bb4:
  store i32 4, i32* %to
  br label %exit
default:
  store i32 5, i32* %to
  br label %exit
exit:
  ret void
}

!1 = !{!"branch_weights", i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16}
