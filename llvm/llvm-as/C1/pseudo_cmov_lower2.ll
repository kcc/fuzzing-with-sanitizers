









define double @foo1(float %p1, double %p2, double %p3) nounwind {
entry:
  %c1 = fcmp oge float %p1, 0.000000e+00
  %d0 = fadd double %p2, 1.25e0
  %d1 = fadd double %p3, 1.25e0
  %d2 = select i1 %c1, double %d0, double %d1
  %d3 = select i1 %c1, double %d2, double %p2
  %d4 = select i1 %c1, double %d3, double %p3
  %d5 = fsub double %d2, %d3
  %d6 = fadd double %d5, %d4
  ret double %d6
}









define double @foo2(float %p1, double %p2, double %p3) nounwind {
entry:
  %c1 = fcmp oge float %p1, 0.000000e+00
  %d0 = fadd double %p2, 1.25e0
  %d1 = fadd double %p3, 1.25e0
  %d2 = select i1 %c1, double %d0, double %d1
  %d3 = select i1 %c1, double %p2, double %d2
  %d4 = select i1 %c1, double %p3, double %d3
  %d5 = fsub double %d2, %d3
  %d6 = fadd double %d5, %d4
  ret double %d6
}
















define double @foo3(i32 %p1, double %p2, double %p3,
                             double %p4, double %p5) nounwind {
entry:
  %c1 = icmp slt i32 %p1, 0
  %d2 = select i1 %c1, double %p2, double %p3
  %d3 = select i1 %c1, double %p3, double %p4
  %d4 = select i1 %c1, double %d2, double %d3
  %d5 = fdiv double %d4, %d3
  ret double %d5
}




















define double @foo4(i32 %p1, double %p2, double %p3,
                             double %p4, double %p5) nounwind {
entry:
  %c1 = icmp slt i32 %p1, 0
  %d2 = select i1 %c1, double %p2, double %p3
  %c2 = icmp sge i32 %p1, 0
  %d3 = select i1 %c2, double %p4, double %p3
  %d4 = select i1 %c2, double %d3, double %d2
  %d5 = fdiv double %d4, %d3
  ret double %d5
}
