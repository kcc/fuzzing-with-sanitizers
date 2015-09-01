







define void @no_branch(i32 %x) {
entry:
  switch i32 %x, label %exit [ ]
exit:
  ret void
}
