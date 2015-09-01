














%foo = type { i8* }
define void @f() {
  bitcast i32* null to %foo*
  ret void
}
