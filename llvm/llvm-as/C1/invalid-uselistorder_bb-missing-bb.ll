

define void @foo() {
  unreachable
}
uselistorder_bb @foo, %bb, { 1, 0 }
