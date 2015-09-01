





define void @sret_void(i32* sret %p) {
  store i32 0, i32* %p
  ret void
}











define i256 @sret_demoted() {
  ret i256 0
}










