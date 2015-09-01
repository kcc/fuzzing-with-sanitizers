









define i32 @_Z3fooPKcjj(i8* nocapture readnone %s, i32 %len, i32 %c) #0 {
entry:
  br label %while.cond

while.cond:                                       
  %klen.0 = phi i32 [ %len, %entry ], [ %sub, %while.cond ]
  %cmp = icmp ugt i32 %klen.0, 11
  %sub = add i32 %klen.0, -12
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        
  %klen.0.lcssa = phi i32 [ %klen.0, %while.cond ]
  ret i32 %klen.0.lcssa
}
