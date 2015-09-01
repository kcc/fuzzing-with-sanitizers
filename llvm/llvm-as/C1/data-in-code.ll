










define void @foo(i32* %ptr) nounwind ssp {
  %tmp = load i32, i32* %ptr, align 4
  switch i32 %tmp, label %exit [
    i32 0, label %bb0
    i32 1, label %bb1
    i32 2, label %bb2
    i32 3, label %bb3
  ]
bb0:
  store i32 0, i32* %ptr, align 4
  br label %exit
bb1:
  store i32 1, i32* %ptr, align 4
  br label %exit
bb2:
  store i32 2, i32* %ptr, align 4
  br label %exit
bb3:
  store i32 3, i32* %ptr, align 4
  br label %exit
exit:
  ret void
}













































































