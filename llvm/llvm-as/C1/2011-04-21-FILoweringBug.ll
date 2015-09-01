






define i32 @t() nounwind {
entry:






  %size = alloca i32, align 4
  %count = alloca i32, align 4
  %index = alloca i32, align 4
  %0 = call i32 @foo(i32* %count, i32* %size, i32* %index) nounwind
  ret i32 %0
}

declare i32 @foo(i32*, i32*, i32*)
