




define i32 @test_addx(i64 %a, i64 %b, i64 %c) nounwind readnone noinline {
entry:







  %0 = add i64 %a, %b
  %1 = icmp ugt i64 %0, %c
  %2 = zext i1 %1 to i32
  ret i32 %2
}


define i32 @test_select_int_icc(i32 %a, i32 %b, i32 %c) nounwind readnone noinline {
entry:







  %0 = icmp eq i32 %a, 0
  %1 = select i1 %0, i32 %b, i32 %c
  ret i32 %1
}


define float @test_select_fp_icc(i32 %a, float %f1, float %f2) nounwind readnone noinline {
entry:







  %0 = icmp eq i32 %a, 0
  %1 = select i1 %0, float %f1, float %f2
  ret float %1
}

define double @test_select_dfp_icc(i32 %a, double %f1, double %f2) nounwind readnone noinline {
entry:







  %0 = icmp eq i32 %a, 0
  %1 = select i1 %0, double %f1, double %f2
  ret double %1
}

define i32 @test_select_int_fcc(float %f, i32 %a, i32 %b) nounwind readnone noinline {
entry:









  %0 = fcmp une float %f, 0.000000e+00
  %a.b = select i1 %0, i32 %a, i32 %b
  ret i32 %a.b
}


define float @test_select_fp_fcc(float %f, float %f1, float %f2) nounwind readnone noinline {
entry:







  %0 = fcmp une float %f, 0.000000e+00
  %1 = select i1 %0, float %f1, float %f2
  ret float %1
}

define double @test_select_dfp_fcc(double %f, double %f1, double %f2) nounwind readnone noinline {
entry:









  %0 = fcmp une double %f, 0.000000e+00
  %1 = select i1 %0, double %f1, double %f2
  ret double %1
}

define i32 @test_float_cc(double %a, double %b, i32 %c, i32 %d) {
entry:












   %0 = fcmp uge double %a, 0.000000e+00
   br i1 %0, label %loop, label %loop.2

loop:
   %1 = icmp eq i32 %c, 10
   br i1 %1, label %loop, label %exit.0

loop.2:
   %2 = fcmp ogt double %b, 0.000000e+00
   br i1 %2, label %exit.1, label %loop

exit.0:
   ret i32 0

exit.1:
   ret i32 1
}

































define void @test_adde_sube(i8* %a, i8* %b, i8* %sum, i8* %diff) {
entry:
   %0 = bitcast i8* %a to i128*
   %1 = bitcast i8* %b to i128*
   %2 = load i128, i128* %0
   %3 = load i128, i128* %1
   %4 = add i128 %2, %3
   %5 = bitcast i8* %sum to i128*
   store i128 %4, i128* %5
   tail call void asm sideeffect "", "=*m,*m"(i128 *%0, i128* %5) nounwind
   %6 = load i128, i128* %0
   %7 = sub i128 %2, %6
   %8 = bitcast i8* %diff to i128*
   store i128 %7, i128* %8
   ret void
}
