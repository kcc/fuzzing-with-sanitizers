









define void @bar() nounwind {
entry:
  %. = select i1 undef, i32 2, i32 1
  br label %"5.preheader"

"4":                                              
  %0 = phi i32 [ 0, %"5.preheader" ], [ %1, %"4" ]
  %1 = add nsw i32 %0, 1
  %2 = icmp sgt i32 %., %1
  br i1 %2, label %"4", label %"9"

"9":                                              
  %3 = add i32 %6, 1
  %4 = add i32 %3, %1
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %"5.preheader", label %return

"5.preheader":                                    
  %6 = phi i32 [ 0, %entry ], [ %4, %"9" ]
  br label %"4"

return:                                           
  ret void
}
