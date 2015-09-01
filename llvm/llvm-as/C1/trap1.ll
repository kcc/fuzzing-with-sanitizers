

declare void @llvm.trap()


define i32 @main()  {
entry:
  call void @llvm.trap()
  unreachable

  ret i32 0
}

