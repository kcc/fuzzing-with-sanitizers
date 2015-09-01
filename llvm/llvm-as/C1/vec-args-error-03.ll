



declare void @bar(<1 x i128>)

define void @foo() {
  call void @bar (<1 x i128> <i128 0>)
  ret void
}


