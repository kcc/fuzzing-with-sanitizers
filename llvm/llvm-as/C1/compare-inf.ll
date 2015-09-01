




declare void @f() nounwind




define void @oeq_inff(float %x) nounwind {
  %t0 = fcmp oeq float %x, 0x7FF0000000000000
  br i1 %t0, label %true, label %false

true:
  call void @f() nounwind
  br label %false

false:
  ret void
}




define void @oeq_inf(double %x) nounwind {
  %t0 = fcmp oeq double %x, 0x7FF0000000000000
  br i1 %t0, label %true, label %false

true:
  call void @f() nounwind
  br label %false

false:
  ret void
}




define void @une_inff(float %x) nounwind {
  %t0 = fcmp une float %x, 0x7FF0000000000000
  br i1 %t0, label %true, label %false

true:
  call void @f() nounwind
  br label %false

false:
  ret void
}




define void @une_inf(double %x) nounwind {
  %t0 = fcmp une double %x, 0x7FF0000000000000
  br i1 %t0, label %true, label %false

true:
  call void @f() nounwind
  br label %false

false:
  ret void
}




define void @oeq_neg_inff(float %x) nounwind {
  %t0 = fcmp oeq float %x, 0xFFF0000000000000
  br i1 %t0, label %true, label %false

true:
  call void @f() nounwind
  br label %false

false:
  ret void
}




define void @oeq_neg_inf(double %x) nounwind {
  %t0 = fcmp oeq double %x, 0xFFF0000000000000
  br i1 %t0, label %true, label %false

true:
  call void @f() nounwind
  br label %false

false:
  ret void
}




define void @une_neg_inff(float %x) nounwind {
  %t0 = fcmp une float %x, 0xFFF0000000000000
  br i1 %t0, label %true, label %false

true:
  call void @f() nounwind
  br label %false

false:
  ret void
}




define void @une_neg_inf(double %x) nounwind {
  %t0 = fcmp une double %x, 0xFFF0000000000000
  br i1 %t0, label %true, label %false

true:
  call void @f() nounwind
  br label %false

false:
  ret void
}
