




define void @_Z1fv() nounwind {
entry:
  ret void
}

define void @_Z1gv() nounwind {
entry:
  call void @_Z1fv()
  ret void
}
