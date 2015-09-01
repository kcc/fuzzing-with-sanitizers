






define i32 @test(i32 %n) {
entry:
  %cmp = icmp slt i32 %n, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %v1 = add nsw i32 %n, -2
  %call1 = tail call i32 @test(i32 %v1)
  br label %return

if.else:                                          
  %v2 = add nsw i32 %n, 4
  %call2 = tail call i32 @test(i32 %v2)
  br label %return

return:                                           
  %retval = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval
}
