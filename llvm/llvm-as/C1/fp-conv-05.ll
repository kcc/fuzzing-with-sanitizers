




define float @f1(i32 %i) {



  %conv = sitofp i32 %i to float
  ret float %conv
}


define double @f2(i32 %i) {



  %conv = sitofp i32 %i to double
  ret double %conv
}


define void @f3(i32 %i, fp128 *%dst) {





  %conv = sitofp i32 %i to fp128
  store fp128 %conv, fp128 *%dst
  ret void
}
