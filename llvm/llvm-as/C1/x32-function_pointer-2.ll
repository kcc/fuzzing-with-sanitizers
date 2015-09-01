











define void @bar(i8* %h, void (i8*)* nocapture %foo) nounwind {
entry:
  tail call void %foo(i8* %h) nounwind


  tail call void %foo(i8* %h) nounwind

  ret void
}
