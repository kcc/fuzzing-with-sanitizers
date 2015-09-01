


define void @bar(i32 %b, i32 %a) nounwind optsize ssp {
entry:



  %0 = add i32 %a, 15                             
  %1 = zext i32 %0 to i64                         
  tail call void @foo(i64 %1) nounwind
  ret void
}

declare void @foo(i64)
