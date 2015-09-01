




declare void @external()

define hidden void @tailcallee_hidden() {
entry:
  ret void
}

define void @tailcall_hidden() {
entry:
  tail call void @tailcallee_hidden()
  ret void
}



define internal void @tailcallee_internal() {
entry:
  ret void
}

define void @tailcall_internal() {
entry:
  tail call void @tailcallee_internal()
  ret void
}



define default void @tailcallee_default() {
entry:
  ret void
}

define void @tailcall_default() {
entry:
  tail call void @tailcallee_default()
  ret void
}



define void @tailcallee_default_implicit() {
entry:
  ret void
}

define void @tailcall_default_implicit() {
entry:
  tail call void @tailcallee_default_implicit()
  ret void
}



define void @tailcall_external() {
  tail call void @external()
  ret void
}



define void @musttail_external() {
  musttail call void @external()
  ret void
}



