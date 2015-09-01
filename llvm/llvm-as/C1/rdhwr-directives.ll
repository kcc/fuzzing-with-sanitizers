

@a = external thread_local global i32

define i32 @foo() nounwind readonly {
entry:





  %0 = load i32, i32* @a, align 4
  ret i32 %0
}

