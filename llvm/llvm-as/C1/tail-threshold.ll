









declare void @bar()

define void @foo(i32 %xxx) {
entry:
  switch i32 %xxx, label %bb4 [
    i32 0, label %bb0
    i32 1, label %bb1
    i32 2, label %bb2
    i32 3, label %bb3
  ]

bb0:
  call void @bar()
  br label %bb5

bb1:
 call void @bar()
 br label %bb5

bb2:
  call void @bar()
  br label %bb5

bb3:
  call void @bar()
  br label %bb5

bb4:
  call void @bar()
  br label %bb5

bb5:
  ret void
}
