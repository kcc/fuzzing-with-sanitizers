






@d2 = external global double
@d3 = external global double

define i32 @i32_icmp_ne_i32_val(i32 signext %s, i32 signext %f0, i32 signext %f1) nounwind readnone {
entry:






















  %tobool = icmp ne i32 %s, 0
  %cond = select i1 %tobool, i32 %f1, i32 %f0
  ret i32 %cond
}

define i64 @i32_icmp_ne_i64_val(i32 signext %s, i64 %f0, i64 %f1) nounwind readnone {
entry:







































  %tobool = icmp ne i32 %s, 0
  %cond = select i1 %tobool, i64 %f1, i64 %f0
  ret i64 %cond
}

define i64 @i64_icmp_ne_i64_val(i64 %s, i64 %f0, i64 %f1) nounwind readnone {
entry:






































  %tobool = icmp ne i64 %s, 0
  %cond = select i1 %tobool, i64 %f1, i64 %f0
  ret i64 %cond
}

define float @i32_icmp_ne_f32_val(i32 signext %s, float %f0, float %f1) nounwind readnone {
entry:


























  %tobool = icmp ne i32 %s, 0
  %cond = select i1 %tobool, float %f0, float %f1
  ret float %cond
}

define double @i32_icmp_ne_f64_val(i32 signext %s, double %f0, double %f1) nounwind readnone {
entry:





























  %tobool = icmp ne i32 %s, 0
  %cond = select i1 %tobool, double %f0, double %f1
  ret double %cond
}

define float @f32_fcmp_oeq_f32_val(float %f0, float %f1, float %f2, float %f3) nounwind readnone {
entry:






























  %cmp = fcmp oeq float %f2, %f3
  %cond = select i1 %cmp, float %f0, float %f1
  ret float %cond
}

define float @f32_fcmp_olt_f32_val(float %f0, float %f1, float %f2, float %f3) nounwind readnone {
entry:






























  %cmp = fcmp olt float %f2, %f3
  %cond = select i1 %cmp, float %f0, float %f1
  ret float %cond
}

define float @f32_fcmp_ogt_f32_val(float %f0, float %f1, float %f2, float %f3) nounwind readnone {
entry:






























  %cmp = fcmp ogt float %f2, %f3
  %cond = select i1 %cmp, float %f0, float %f1
  ret float %cond
}

define double @f32_fcmp_ogt_f64_val(double %f0, double %f1, float %f2, float %f3) nounwind readnone {
entry:






























  %cmp = fcmp ogt float %f2, %f3
  %cond = select i1 %cmp, double %f0, double %f1
  ret double %cond
}

define double @f64_fcmp_oeq_f64_val(double %f0, double %f1, double %f2, double %f3) nounwind readnone {
entry:






























  %cmp = fcmp oeq double %f2, %f3
  %cond = select i1 %cmp, double %f0, double %f1
  ret double %cond
}

define double @f64_fcmp_olt_f64_val(double %f0, double %f1, double %f2, double %f3) nounwind readnone {
entry:






























  %cmp = fcmp olt double %f2, %f3
  %cond = select i1 %cmp, double %f0, double %f1
  ret double %cond
}

define double @f64_fcmp_ogt_f64_val(double %f0, double %f1, double %f2, double %f3) nounwind readnone {
entry:






























  %cmp = fcmp ogt double %f2, %f3
  %cond = select i1 %cmp, double %f0, double %f1
  ret double %cond
}

define float @f64_fcmp_ogt_f32_val(float %f0, float %f1, double %f2, double %f3) nounwind readnone {
entry:

































  %cmp = fcmp ogt double %f2, %f3
  %cond = select i1 %cmp, float %f0, float %f1
  ret float %cond
}

define i32 @f32_fcmp_oeq_i32_val(i32 signext %f0, i32 signext %f1, float %f2, float %f3) nounwind readnone {
entry:






































  %cmp = fcmp oeq float %f2, %f3
  %cond = select i1 %cmp, i32 %f0, i32 %f1
  ret i32 %cond
}

define i32 @f32_fcmp_olt_i32_val(i32 signext %f0, i32 signext %f1, float %f2, float %f3) nounwind readnone {
entry:





































  %cmp = fcmp olt float %f2, %f3
  %cond = select i1 %cmp, i32 %f0, i32 %f1
  ret i32 %cond
}

define i32 @f32_fcmp_ogt_i32_val(i32 signext %f0, i32 signext %f1, float %f2, float %f3) nounwind readnone {
entry:






































  %cmp = fcmp ogt float %f2, %f3
  %cond = select i1 %cmp, i32 %f0, i32 %f1
  ret i32 %cond
}

define i32 @f64_fcmp_oeq_i32_val(i32 signext %f0, i32 signext %f1) nounwind readonly {
entry:




































































  %tmp = load double, double* @d2, align 8
  %tmp1 = load double, double* @d3, align 8
  %cmp = fcmp oeq double %tmp, %tmp1
  %cond = select i1 %cmp, i32 %f0, i32 %f1
  ret i32 %cond
}

define i32 @f64_fcmp_olt_i32_val(i32 signext %f0, i32 signext %f1) nounwind readonly {
entry:




































































  %tmp = load double, double* @d2, align 8
  %tmp1 = load double, double* @d3, align 8
  %cmp = fcmp olt double %tmp, %tmp1
  %cond = select i1 %cmp, i32 %f0, i32 %f1
  ret i32 %cond
}

define i32 @f64_fcmp_ogt_i32_val(i32 signext %f0, i32 signext %f1) nounwind readonly {
entry:




































































  %tmp = load double, double* @d2, align 8
  %tmp1 = load double, double* @d3, align 8
  %cmp = fcmp ogt double %tmp, %tmp1
  %cond = select i1 %cmp, i32 %f0, i32 %f1
  ret i32 %cond
}
