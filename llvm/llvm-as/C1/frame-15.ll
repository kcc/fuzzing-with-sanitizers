








declare void @foo(float *%ptr1, float *%ptr2)


















define void @f1(double *%dst) {







  %region1 = alloca [978 x float], align 8
  %region2 = alloca [978 x float], align 8
  %start1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 1
  %ptr2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 1
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}


define void @f2(double *%dst) {









  %region1 = alloca [978 x float], align 8
  %region2 = alloca [978 x float], align 8
  %start1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 2
  %ptr2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 2
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}


define void @f3(double *%dst) {









  %region1 = alloca [978 x float], align 8
  %region2 = alloca [978 x float], align 8
  %start1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 3
  %ptr2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 3
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}


define void @f4(double *%dst) {









  %region1 = alloca [2002 x float], align 8
  %region2 = alloca [2002 x float], align 8
  %start1 = getelementptr inbounds [2002 x float], [2002 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [2002 x float], [2002 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [2002 x float], [2002 x float]* %region1, i64 0, i64 1
  %ptr2 = getelementptr inbounds [2002 x float], [2002 x float]* %region2, i64 0, i64 1
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}


define void @f5(double *%dst) {









  %region1 = alloca [2002 x float], align 8
  %region2 = alloca [2002 x float], align 8
  %start1 = getelementptr inbounds [2002 x float], [2002 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [2002 x float], [2002 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [2002 x float], [2002 x float]* %region1, i64 0, i64 2
  %ptr2 = getelementptr inbounds [2002 x float], [2002 x float]* %region2, i64 0, i64 2
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}


define void @f6(double *%dst) {









  %region1 = alloca [2002 x float], align 8
  %region2 = alloca [2002 x float], align 8
  %start1 = getelementptr inbounds [2002 x float], [2002 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [2002 x float], [2002 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [2002 x float], [2002 x float]* %region1, i64 0, i64 3
  %ptr2 = getelementptr inbounds [2002 x float], [2002 x float]* %region2, i64 0, i64 3
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}




define void @f7(double *%dst) {









  %region1 = alloca [2004 x float], align 8
  %region2 = alloca [2004 x float], align 8
  %start1 = getelementptr inbounds [2004 x float], [2004 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [2004 x float], [2004 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [2004 x float], [2004 x float]* %region1, i64 0, i64 1023
  %ptr2 = getelementptr inbounds [2004 x float], [2004 x float]* %region2, i64 0, i64 1023
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}



define void @f8(double *%dst) {









  %region1 = alloca [2006 x float], align 8
  %region2 = alloca [2006 x float], align 8
  %start1 = getelementptr inbounds [2006 x float], [2006 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [2006 x float], [2006 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [2006 x float], [2006 x float]* %region1, i64 0, i64 1023
  %ptr2 = getelementptr inbounds [2006 x float], [2006 x float]* %region2, i64 0, i64 1023
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}




define void @f9(double *%dst) {









  %region1 = alloca [2006 x float], align 8
  %region2 = alloca [2006 x float], align 8
  %start1 = getelementptr inbounds [2006 x float], [2006 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [2006 x float], [2006 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [2006 x float], [2006 x float]* %region1, i64 0, i64 1024
  %ptr2 = getelementptr inbounds [2006 x float], [2006 x float]* %region2, i64 0, i64 1024
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}





define void @f10(i32 *%vptr, double *%dst) {













  %region1 = alloca [978 x float], align 8
  %region2 = alloca [978 x float], align 8
  %start1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %ptr1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 2
  %ptr2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 2
  %i0 = load volatile i32 , i32 *%vptr
  %i1 = load volatile i32 , i32 *%vptr
  %i2 = load volatile i32 , i32 *%vptr
  %i3 = load volatile i32 , i32 *%vptr
  %i4 = load volatile i32 , i32 *%vptr
  %i5 = load volatile i32 , i32 *%vptr
  %i14 = load volatile i32 , i32 *%vptr
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  store volatile i32 %i0, i32 *%vptr
  store volatile i32 %i1, i32 *%vptr
  store volatile i32 %i2, i32 *%vptr
  store volatile i32 %i3, i32 *%vptr
  store volatile i32 %i4, i32 *%vptr
  store volatile i32 %i5, i32 *%vptr
  store volatile i32 %i14, i32 *%vptr
  ret void
}


define void @f11(double *%dst, i64 %index) {











  %region1 = alloca [978 x float], align 8
  %region2 = alloca [978 x float], align 8
  %start1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 0
  %start2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 0
  call void @foo(float *%start1, float *%start2)
  %elem1 = getelementptr inbounds [978 x float], [978 x float]* %region1, i64 0, i64 2
  %elem2 = getelementptr inbounds [978 x float], [978 x float]* %region2, i64 0, i64 2
  %base1 = ptrtoint float *%elem1 to i64
  %base2 = ptrtoint float *%elem2 to i64
  %addr1 = add i64 %base1, %index
  %addr2 = add i64 %base2, %index
  %ptr1 = inttoptr i64 %addr1 to float *
  %ptr2 = inttoptr i64 %addr2 to float *
  %float1 = load float , float *%ptr1
  %float2 = load float , float *%ptr2
  %double1 = fpext float %float1 to double
  %double2 = fpext float %float2 to double
  store volatile double %double1, double *%dst
  store volatile double %double2, double *%dst
  ret void
}
