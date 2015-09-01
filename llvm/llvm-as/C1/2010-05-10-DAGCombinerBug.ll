



define i32 @CXB30130(i32 %num1, i16* nocapture %num2, float* nocapture %num3, double* nocapture %num4) nounwind ssp {
entry:
  %0 = load i16, i16* %num2, align 2                   
  %1 = mul nsw i16 %0, %0                         
  store i16 %1, i16* %num2, align 2
  ret i32 undef
}
