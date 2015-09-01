






define void @test_not_crash(i32 %in_a) #0 {
entry:
  %cmp0 = icmp eq i32 %in_a, -1
  %cmp1 = icmp ne i32 %in_a, 0
  %cond0 = and i1 %cmp0, %cmp1
  br i1 %cond0, label %b0, label %b1

b0:                                
  %cmp2 = icmp eq i32 %in_a, 0
  %cmp3 = icmp ne i32 %in_a, 1
  %cond1 = or i1 %cmp2, %cmp3
  br i1 %cond1, label %exit, label %b1

b1:                                       
  br label %exit

exit:                               
  ret void
}
