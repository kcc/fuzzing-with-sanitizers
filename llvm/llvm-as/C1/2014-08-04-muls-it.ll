


define arm_aapcscc i32 @function(i32 %i, i32 %j) {
entry:
  %cmp = icmp eq i32 %i, %j
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  %mul = mul nsw i32 %i, %i
  br label %if.end

if.end:                                           
  %i.addr.0 = phi i32 [ %mul, %if.then ], [ %i, %entry ]
  ret i32 %i.addr.0
}







