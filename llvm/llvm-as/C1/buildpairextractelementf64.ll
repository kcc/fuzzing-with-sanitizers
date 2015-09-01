






@a = external global i32









define double @f(i32 %a1, double %d) nounwind {
entry:
  store i32 %a1, i32* @a, align 4
  %add = fadd double %d, 2.000000e+00
  ret double %add
}









define void @f3(double %d, i32 %a1) nounwind {
entry:
  tail call void @f2(i32 %a1, double %d) nounwind
  ret void
}

declare void @f2(i32, double)

