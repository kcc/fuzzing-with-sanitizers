

declare void @bar(i32)

define void @foo(i32 %a) {
  %b = mul i32 %a, 3
  call void @bar(i32 %b)
  ret void
}

