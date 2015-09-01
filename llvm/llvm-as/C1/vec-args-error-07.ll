



declare void @bar(<1 x fp128>)

define void @foo() {
  call void @bar (<1 x fp128> <fp128 0xL00000000000000000000000000000000>)
  ret void
}


