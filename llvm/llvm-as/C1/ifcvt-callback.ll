




 


define i32 @test_ifcvt(i32 %a, i32 %b) #0 {
  %tmp2 = icmp eq i32 %a, 0
  br i1 %tmp2, label %cond_false, label %cond_true

cond_true:
  %tmp5 = add i32 %b, 1
  ret i32 %tmp5

cond_false:
  %tmp7 = add i32 %b, -1
  ret i32 %tmp7
}

attributes #0 = { "target-cpu"="cortex-a8" }
