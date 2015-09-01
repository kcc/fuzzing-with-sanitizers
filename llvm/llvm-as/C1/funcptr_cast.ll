

define i8 @test() {




entry:
  %0 = load i8, i8* bitcast (void (...)* @foo to i8*), align 1
  ret i8 %0
}

declare void @foo(...)
