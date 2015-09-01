




@foo2 = alias i32 ()* @foo

define i32 @foo() { ret i32 1 }

define i32 @test() {
	call i32 @test()
	ret i32 %1
}

define i32 @bar() { ret i32 2 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @foo to i8*)], section "llvm.metadata"
