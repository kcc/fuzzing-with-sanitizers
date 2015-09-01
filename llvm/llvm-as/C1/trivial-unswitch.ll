



























define i32 @test(i32* %var, i1 %cond1, i1 %cond2) {
  br label %loop_begin

loop_begin:  
  br i1 %cond1, label %continue, label %loop_exit	

continue:
  %var_val = load i32, i32* %var
  br i1 %cond2, label %do_something, label %loop_exit	

do_something:
  call void @some_func() noreturn nounwind
  br label %loop_begin

loop_exit:
  ret i32 0
}

declare void @some_func() noreturn