








define i32 @stp_int_aa(i32 %a, i32 %b, i32* nocapture %p) nounwind {
  store i32 %a, i32* %p, align 4
  %ld.ptr = getelementptr inbounds i32, i32* %p, i64 2
  %tmp = load i32, i32* %ld.ptr, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  store i32 %b, i32* %add.ptr, align 4
  ret i32 %tmp
}





define i64 @stp_long_aa(i64 %a, i64 %b, i64* nocapture %p) nounwind {
  store i64 %a, i64* %p, align 8
  %ld.ptr = getelementptr inbounds i64, i64* %p, i64 2
  %tmp = load i64, i64* %ld.ptr, align 4
  %add.ptr = getelementptr inbounds i64, i64* %p, i64 1
  store i64 %b, i64* %add.ptr, align 8
  ret i64 %tmp
}





define float @stp_float_aa(float %a, float %b, float* nocapture %p) nounwind {
  store float %a, float* %p, align 4
  %ld.ptr = getelementptr inbounds float, float* %p, i64 2
  %tmp = load float, float* %ld.ptr, align 4
  %add.ptr = getelementptr inbounds float, float* %p, i64 1
  store float %b, float* %add.ptr, align 4
  ret float %tmp
}





define double @stp_double_aa(double %a, double %b, double* nocapture %p) nounwind {
  store double %a, double* %p, align 8
  %ld.ptr = getelementptr inbounds double, double* %p, i64 2
  %tmp = load double, double* %ld.ptr, align 4
  %add.ptr = getelementptr inbounds double, double* %p, i64 1
  store double %b, double* %add.ptr, align 8
  ret double %tmp
}








define i32 @stp_int_aa_after(i32 %w0, i32 %a, i32 %b, i32* nocapture %p) nounwind {
  store i32 %a, i32* %p, align 4
  %ld.ptr = getelementptr inbounds i32, i32* %p, i64 1
  %tmp = load i32, i32* %ld.ptr, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  store i32 %b, i32* %add.ptr, align 4
  ret i32 %tmp
}





define i64 @stp_long_aa_after(i64 %x0, i64 %a, i64 %b, i64* nocapture %p) nounwind {
  store i64 %a, i64* %p, align 8
  %ld.ptr = getelementptr inbounds i64, i64* %p, i64 1
  %tmp = load i64, i64* %ld.ptr, align 4
  %add.ptr = getelementptr inbounds i64, i64* %p, i64 1
  store i64 %b, i64* %add.ptr, align 8
  ret i64 %tmp
}





define float @stp_float_aa_after(float %s0, float %a, float %b, float* nocapture %p) nounwind {
  store float %a, float* %p, align 4
  %ld.ptr = getelementptr inbounds float, float* %p, i64 1
  %tmp = load float, float* %ld.ptr, align 4
  %add.ptr = getelementptr inbounds float, float* %p, i64 1
  store float %b, float* %add.ptr, align 4
  ret float %tmp
}





define double @stp_double_aa_after(double %d0, double %a, double %b, double* nocapture %p) nounwind {
  store double %a, double* %p, align 8
  %ld.ptr = getelementptr inbounds double, double* %p, i64 1
  %tmp = load double, double* %ld.ptr, align 4
  %add.ptr = getelementptr inbounds double, double* %p, i64 1
  store double %b, double* %add.ptr, align 8
  ret double %tmp
}
