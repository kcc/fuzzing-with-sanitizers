










declare void @consume(i32)
declare void @func()

define void @foo() nounwind {

entry:
  call void @consume(i32 ptrtoint (void ()* @func to i32))


  ret void
}

