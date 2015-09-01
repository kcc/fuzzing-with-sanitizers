

define void @foo0(void (i32)* nocapture %f1) nounwind {
entry:

  tail call void %f1(i32 13) nounwind
  ret void
}
