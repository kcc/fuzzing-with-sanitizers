


define void @foo(i32 %X, i32 %Y, i32 %Z) nounwind {









entry:
  %tmp1 = icmp eq i32 %X, 0
  %tmp3 = icmp slt i32 %Y, 5
  %tmp4 = or i1 %tmp3, %tmp1
  br i1 %tmp4, label %cond_true, label %UnifiedReturnBlock

cond_true:
  %tmp5 = tail call i32 (...) @bar( )
  ret void

UnifiedReturnBlock:
  ret void
}

declare i32 @bar(...)
