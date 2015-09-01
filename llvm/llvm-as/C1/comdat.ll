



$foo = comdat any



define void @foo() comdat {
  call void @bar()
  ret void
}



define void @bar() comdat($foo) {
  call void @foo()
  ret void
}
