




define void @foo() {
  ret void
}

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @foo to i8*)], section "llvm.metadata"

@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (void ()* @foo to i8*)], section "llvm.metadata"




