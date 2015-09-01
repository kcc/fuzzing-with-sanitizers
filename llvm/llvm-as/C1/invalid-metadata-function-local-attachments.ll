

define void @foo(i32 %v) {
entry:

  ret void, !foo !{i32 %v}
}
