


declare void @callee()

define void @caller() {
  call void @callee()
  ret void



}

define void @tail_caller() {
  tail call void @callee()
  ret void



}
