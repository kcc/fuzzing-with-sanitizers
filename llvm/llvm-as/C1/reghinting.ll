














define i32 @pr10221(float %x, float %y, i8** nocapture %_retval) nounwind uwtable ssp {
entry:
  %add = fadd float %x, %y
  %conv = fpext float %add to double
  %call = tail call i32 @finit(double %conv) nounwind
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           
  tail call void @foo(float %x, float %y) nounwind
  br label %return

return:                                           
  %retval.0 = phi i32 [ 0, %if.end ], [ 5, %entry ]
  ret i32 %retval.0
}

declare i32 @finit(double)

declare void @foo(float, float)
