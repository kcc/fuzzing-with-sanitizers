






define i32 @check_flag(i32 %flags, ...) nounwind {
entry:
  %and = and i32 %flags, 512
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:
  br label %if.end

if.end:
  %hasflag = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %hasflag
}
