





define float @f1(i64 %i) {




  %conv = uitofp i64 %i to float
  ret float %conv
}


define double @f2(i64 %i) {




  %conv = uitofp i64 %i to double
  ret double %conv
}


define void @f3(i64 %i, fp128 *%dst) {




  %conv = uitofp i64 %i to fp128
  store fp128 %conv, fp128 *%dst
  ret void
}
