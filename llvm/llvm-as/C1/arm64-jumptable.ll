



define void @sum(i32* %to) {
entry:
  switch i32 undef, label %exit [
    i32 1, label %bb1
    i32 2, label %bb2
    i32 3, label %bb3
    i32 4, label %bb4
  ]
bb1:
  store i32 undef, i32* %to
  br label %exit
bb2:
  store i32 undef, i32* %to
  br label %exit
bb3:
  store i32 undef, i32* %to
  br label %exit
bb4:
  store i32 undef, i32* %to
  br label %exit
exit:
  ret void
}








