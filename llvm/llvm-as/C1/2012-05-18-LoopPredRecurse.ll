







@c = common global i8 0, align 1

define i32 @func() {
entry:
  br label %for.cond

for.cond:                                         
  %storemerge = phi i8 [ -1, %entry ], [ %inc, %for.body ]
  %ui.0 = phi i32 [ undef, %entry ], [ %div, %for.body ]
  %tobool = icmp eq i8 %storemerge, 0
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         
  %conv = sext i8 %storemerge to i32
  %div = lshr i32 %conv, 1
  %tobool2 = icmp eq i32 %div, 0
  %inc = add i8 %storemerge, 1
  br i1 %tobool2, label %for.cond, label %for.end

for.end:                                          
  ret i32 0
}
