

define void @foo() {
  unreachable
  uselistorder i32 %val, { 1, 0 }
}
