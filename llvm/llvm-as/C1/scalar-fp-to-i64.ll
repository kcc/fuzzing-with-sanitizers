















































define i64 @f_to_u64(float %a) nounwind {
  %r = fptoui float %a to i64
  ret i64 %r
}












define i64 @f_to_s64(float %a) nounwind {
  %r = fptosi float %a to i64
  ret i64 %r
}


















define i64 @d_to_u64(double %a) nounwind {
  %r = fptoui double %a to i64
  ret i64 %r
}












define i64 @d_to_s64(double %a) nounwind {
  %r = fptosi double %a to i64
  ret i64 %r
}








define i64 @x_to_u64(x86_fp80 %a) nounwind {
  %r = fptoui x86_fp80 %a to i64
  ret i64 %r
}













define i64 @x_to_s64(x86_fp80 %a) nounwind {
  %r = fptosi x86_fp80 %a to i64
  ret i64 %r
}
