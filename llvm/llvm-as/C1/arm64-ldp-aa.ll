








define i32 @ldp_int_aa(i32 %a, i32* %p) nounwind {
  %tmp = load i32, i32* %p, align 4
  %str.ptr = getelementptr inbounds i32, i32* %p, i64 2
  store i32 %a, i32* %str.ptr, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  %tmp1 = load i32, i32* %add.ptr, align 4
  %add = add nsw i32 %tmp1, %tmp
  ret i32 %add
}





define i64 @ldp_long_aa(i64 %a, i64* %p) nounwind {
  %tmp = load i64, i64* %p, align 8
  %str.ptr = getelementptr inbounds i64, i64* %p, i64 2
  store i64 %a, i64* %str.ptr, align 4
  %add.ptr = getelementptr inbounds i64, i64* %p, i64 1
  %tmp1 = load i64, i64* %add.ptr, align 8
  %add = add nsw i64 %tmp1, %tmp
  ret i64 %add
}





define float @ldp_float_aa(float %a, float* %p) nounwind {
  %tmp = load float, float* %p, align 4
  %str.ptr = getelementptr inbounds float, float* %p, i64 2
  store float %a, float* %str.ptr, align 4
  %add.ptr = getelementptr inbounds float, float* %p, i64 1
  %tmp1 = load float, float* %add.ptr, align 4
  %add = fadd float %tmp, %tmp1
  ret float %add
}





define double @ldp_double_aa(double %a, double* %p) nounwind {
  %tmp = load double, double* %p, align 8
  %str.ptr = getelementptr inbounds double, double* %p, i64 2
  store double %a, double* %str.ptr, align 4
  %add.ptr = getelementptr inbounds double, double* %p, i64 1
  %tmp1 = load double, double* %add.ptr, align 8
  %add = fadd double %tmp, %tmp1
  ret double %add
}
