

declare void @lazy() nonlazybind
declare void @not()




define void @foo() nounwind {
  call void @not()
  call void @lazy()
  ret void
}



define void @tail_call_regular() nounwind {
  tail call void @not()
  ret void
}



define void @tail_call_eager() nounwind {
  tail call void @lazy()
  ret void
}
