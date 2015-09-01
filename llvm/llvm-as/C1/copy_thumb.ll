





























declare void @bar(i32, i32)

define void @foo(i32 %a, i32 %b) {
entry:
  call void @bar(i32 %b, i32 %a)
  ret void
}

