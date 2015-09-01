



declare i8 *@llvm.stacksave()

define void @f1(i8 **%dest) {



  %addr = call i8 *@llvm.stacksave()
  store volatile i8 *%addr, i8 **%dest
  ret void
}
