

define void @f1(i64 %ll1, float %f, i64 %ll, i32 %i, float %f2) nounwind {
entry:








  tail call void @ff1(i32 %i, i64 1085102592623924856) nounwind




  tail call void @ff2(i64 %ll, double 3.000000e+00) nounwind
  %sub = add nsw i32 %i, -1






  tail call void @ff3(i32 %i, i64 %ll, i32 %sub, i64 %ll1) nounwind
  ret void
}

declare void @ff1(i32, i64)

declare void @ff2(i64, double)

declare void @ff3(i32, i64, i32, i64)
