

define void @foo() {
  unreachable
  uselistorder i32 %1, { 1, 0 }
}
