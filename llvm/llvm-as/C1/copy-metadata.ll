



define i32 @test(i1 %cond) {

  br label %loop_begin

loop_begin:

  br i1 %cond, label %continue, label %loop_exit, !make.implicit !0

continue:
  call void @some_func()
  br label %loop_begin

loop_exit:
  ret i32 0
}

declare void @some_func()

!0 = !{}
