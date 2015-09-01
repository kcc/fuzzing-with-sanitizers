




@abcd = external global i32


define void @foo()  {
entry:
  store i32 12345, i32* @abcd, align 4



  ret void
}

