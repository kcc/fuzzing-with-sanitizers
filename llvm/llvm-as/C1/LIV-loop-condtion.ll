




define i32 @test(i1 %cond1, i32 %var1) {
entry:
  br label %loop_begin

loop_begin:
  %var3 = phi i32 [%var1, %entry], [%var2, %do_something]
  %cond2 = icmp eq i32 %var3, 10
  %cond.and = and i1 %cond1, %cond2
  


  br i1 %cond.and, label %do_something, label %loop_exit 

do_something:
  %var2 = add i32 %var3, 1
  call void @some_func() noreturn nounwind
  br label %loop_begin

loop_exit:
  ret i32 0
}

declare void @some_func() noreturn 