

define float @A(i32 %u) nounwind  {
entry:

  bitcast i32 %u to float
  ret float %0
}

define i32 @B(float %u) nounwind  {
entry:

  bitcast float %u to i32
  ret i32 %0
}
