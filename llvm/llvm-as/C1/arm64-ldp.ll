





define i32 @ldp_int(i32* %p) nounwind {
  %tmp = load i32, i32* %p, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  %tmp1 = load i32, i32* %add.ptr, align 4
  %add = add nsw i32 %tmp1, %tmp
  ret i32 %add
}



define i64 @ldp_sext_int(i32* %p) nounwind {
  %tmp = load i32, i32* %p, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  %tmp1 = load i32, i32* %add.ptr, align 4
  %sexttmp = sext i32 %tmp to i64
  %sexttmp1 = sext i32 %tmp1 to i64
  %add = add nsw i64 %sexttmp1, %sexttmp
  ret i64 %add
}




define i64 @ldp_half_sext_res0_int(i32* %p) nounwind {
  %tmp = load i32, i32* %p, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  %tmp1 = load i32, i32* %add.ptr, align 4
  %sexttmp = sext i32 %tmp to i64
  %sexttmp1 = zext i32 %tmp1 to i64
  %add = add nsw i64 %sexttmp1, %sexttmp
  ret i64 %add
}




define i64 @ldp_half_sext_res1_int(i32* %p) nounwind {
  %tmp = load i32, i32* %p, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p, i64 1
  %tmp1 = load i32, i32* %add.ptr, align 4
  %sexttmp = zext i32 %tmp to i64
  %sexttmp1 = sext i32 %tmp1 to i64
  %add = add nsw i64 %sexttmp1, %sexttmp
  ret i64 %add
}




define i64 @ldp_long(i64* %p) nounwind {
  %tmp = load i64, i64* %p, align 8
  %add.ptr = getelementptr inbounds i64, i64* %p, i64 1
  %tmp1 = load i64, i64* %add.ptr, align 8
  %add = add nsw i64 %tmp1, %tmp
  ret i64 %add
}



define float @ldp_float(float* %p) nounwind {
  %tmp = load float, float* %p, align 4
  %add.ptr = getelementptr inbounds float, float* %p, i64 1
  %tmp1 = load float, float* %add.ptr, align 4
  %add = fadd float %tmp, %tmp1
  ret float %add
}



define double @ldp_double(double* %p) nounwind {
  %tmp = load double, double* %p, align 8
  %add.ptr = getelementptr inbounds double, double* %p, i64 1
  %tmp1 = load double, double* %add.ptr, align 8
  %add = fadd double %tmp, %tmp1
  ret double %add
}


define i32 @ldur_int(i32* %a) nounwind {




  %p1 = getelementptr inbounds i32, i32* %a, i32 -1
  %tmp1 = load i32, i32* %p1, align 2
  %p2 = getelementptr inbounds i32, i32* %a, i32 -2
  %tmp2 = load i32, i32* %p2, align 2
  %tmp3 = add i32 %tmp1, %tmp2
  ret i32 %tmp3
}

define i64 @ldur_sext_int(i32* %a) nounwind {




  %p1 = getelementptr inbounds i32, i32* %a, i32 -1
  %tmp1 = load i32, i32* %p1, align 2
  %p2 = getelementptr inbounds i32, i32* %a, i32 -2
  %tmp2 = load i32, i32* %p2, align 2
  %sexttmp1 = sext i32 %tmp1 to i64
  %sexttmp2 = sext i32 %tmp2 to i64
  %tmp3 = add i64 %sexttmp1, %sexttmp2
  ret i64 %tmp3
}

define i64 @ldur_half_sext_int_res0(i32* %a) nounwind {





  %p1 = getelementptr inbounds i32, i32* %a, i32 -1
  %tmp1 = load i32, i32* %p1, align 2
  %p2 = getelementptr inbounds i32, i32* %a, i32 -2
  %tmp2 = load i32, i32* %p2, align 2
  %sexttmp1 = zext i32 %tmp1 to i64
  %sexttmp2 = sext i32 %tmp2 to i64
  %tmp3 = add i64 %sexttmp1, %sexttmp2
  ret i64 %tmp3
}

define i64 @ldur_half_sext_int_res1(i32* %a) nounwind {





  %p1 = getelementptr inbounds i32, i32* %a, i32 -1
  %tmp1 = load i32, i32* %p1, align 2
  %p2 = getelementptr inbounds i32, i32* %a, i32 -2
  %tmp2 = load i32, i32* %p2, align 2
  %sexttmp1 = sext i32 %tmp1 to i64
  %sexttmp2 = zext i32 %tmp2 to i64
  %tmp3 = add i64 %sexttmp1, %sexttmp2
  ret i64 %tmp3
}


define i64 @ldur_long(i64* %a) nounwind ssp {




  %p1 = getelementptr inbounds i64, i64* %a, i64 -1
  %tmp1 = load i64, i64* %p1, align 2
  %p2 = getelementptr inbounds i64, i64* %a, i64 -2
  %tmp2 = load i64, i64* %p2, align 2
  %tmp3 = add i64 %tmp1, %tmp2
  ret i64 %tmp3
}

define float @ldur_float(float* %a) {




  %p1 = getelementptr inbounds float, float* %a, i64 -1
  %tmp1 = load float, float* %p1, align 2
  %p2 = getelementptr inbounds float, float* %a, i64 -2
  %tmp2 = load float, float* %p2, align 2
  %tmp3 = fadd float %tmp1, %tmp2
  ret float %tmp3
}

define double @ldur_double(double* %a) {




  %p1 = getelementptr inbounds double, double* %a, i64 -1
  %tmp1 = load double, double* %p1, align 2
  %p2 = getelementptr inbounds double, double* %a, i64 -2
  %tmp2 = load double, double* %p2, align 2
  %tmp3 = fadd double %tmp1, %tmp2
  ret double %tmp3
}


define i64 @pairUpBarelyIn(i64* %a) nounwind ssp {





  %p1 = getelementptr inbounds i64, i64* %a, i64 -31
  %tmp1 = load i64, i64* %p1, align 2
  %p2 = getelementptr inbounds i64, i64* %a, i64 -32
  %tmp2 = load i64, i64* %p2, align 2
  %tmp3 = add i64 %tmp1, %tmp2
  ret i64 %tmp3
}

define i64 @pairUpBarelyInSext(i32* %a) nounwind ssp {





  %p1 = getelementptr inbounds i32, i32* %a, i64 -63
  %tmp1 = load i32, i32* %p1, align 2
  %p2 = getelementptr inbounds i32, i32* %a, i64 -64
  %tmp2 = load i32, i32* %p2, align 2
  %sexttmp1 = sext i32 %tmp1 to i64
  %sexttmp2 = sext i32 %tmp2 to i64
  %tmp3 = add i64 %sexttmp1, %sexttmp2
  ret i64 %tmp3
}

define i64 @pairUpBarelyInHalfSextRes0(i32* %a) nounwind ssp {






  %p1 = getelementptr inbounds i32, i32* %a, i64 -63
  %tmp1 = load i32, i32* %p1, align 2
  %p2 = getelementptr inbounds i32, i32* %a, i64 -64
  %tmp2 = load i32, i32* %p2, align 2
  %sexttmp1 = zext i32 %tmp1 to i64
  %sexttmp2 = sext i32 %tmp2 to i64
  %tmp3 = add i64 %sexttmp1, %sexttmp2
  ret i64 %tmp3
}

define i64 @pairUpBarelyInHalfSextRes1(i32* %a) nounwind ssp {






  %p1 = getelementptr inbounds i32, i32* %a, i64 -63
  %tmp1 = load i32, i32* %p1, align 2
  %p2 = getelementptr inbounds i32, i32* %a, i64 -64
  %tmp2 = load i32, i32* %p2, align 2
  %sexttmp1 = sext i32 %tmp1 to i64
  %sexttmp2 = zext i32 %tmp2 to i64
  %tmp3 = add i64 %sexttmp1, %sexttmp2
  ret i64 %tmp3
}

define i64 @pairUpBarelyOut(i64* %a) nounwind ssp {






  %p1 = getelementptr inbounds i64, i64* %a, i64 -32
  %tmp1 = load i64, i64* %p1, align 2
  %p2 = getelementptr inbounds i64, i64* %a, i64 -33
  %tmp2 = load i64, i64* %p2, align 2
  %tmp3 = add i64 %tmp1, %tmp2
  ret i64 %tmp3
}

define i64 @pairUpBarelyOutSext(i32* %a) nounwind ssp {






  %p1 = getelementptr inbounds i32, i32* %a, i64 -64
  %tmp1 = load i32, i32* %p1, align 2
  %p2 = getelementptr inbounds i32, i32* %a, i64 -65
  %tmp2 = load i32, i32* %p2, align 2
  %sexttmp1 = sext i32 %tmp1 to i64
  %sexttmp2 = sext i32 %tmp2 to i64
  %tmp3 = add i64 %sexttmp1, %sexttmp2
  ret i64 %tmp3
}

define i64 @pairUpNotAligned(i64* %a) nounwind ssp {






  %p1 = getelementptr inbounds i64, i64* %a, i64 -18
  %bp1 = bitcast i64* %p1 to i8*
  %bp1p1 = getelementptr inbounds i8, i8* %bp1, i64 1
  %dp1 = bitcast i8* %bp1p1 to i64*
  %tmp1 = load i64, i64* %dp1, align 1

  %p2 = getelementptr inbounds i64, i64* %a, i64 -17
  %bp2 = bitcast i64* %p2 to i8*
  %bp2p1 = getelementptr inbounds i8, i8* %bp2, i64 1
  %dp2 = bitcast i8* %bp2p1 to i64*
  %tmp2 = load i64, i64* %dp2, align 1

  %tmp3 = add i64 %tmp1, %tmp2
  ret i64 %tmp3
}

define i64 @pairUpNotAlignedSext(i32* %a) nounwind ssp {






  %p1 = getelementptr inbounds i32, i32* %a, i64 -18
  %bp1 = bitcast i32* %p1 to i8*
  %bp1p1 = getelementptr inbounds i8, i8* %bp1, i64 1
  %dp1 = bitcast i8* %bp1p1 to i32*
  %tmp1 = load i32, i32* %dp1, align 1

  %p2 = getelementptr inbounds i32, i32* %a, i64 -17
  %bp2 = bitcast i32* %p2 to i8*
  %bp2p1 = getelementptr inbounds i8, i8* %bp2, i64 1
  %dp2 = bitcast i8* %bp2p1 to i32*
  %tmp2 = load i32, i32* %dp2, align 1

  %sexttmp1 = sext i32 %tmp1 to i64
  %sexttmp2 = sext i32 %tmp2 to i64
  %tmp3 = add i64 %sexttmp1, %sexttmp2
 ret i64 %tmp3
}
