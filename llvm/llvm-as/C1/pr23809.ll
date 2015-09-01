


define i32 @icmp(i32 %a, i32 %b) {

  %sum = add i32 %a, %b
  %1 = icmp sge i32 %sum, 0
  call void @llvm.assume(i1 %1)

  ret i32 %sum
}

define float @fcmp(float %a, float %b) {

  %sum = fadd float %a, %b
  %1 = fcmp oge float %sum, 0.0
  call void @llvm.assume(i1 %1)

  ret float %sum
}

declare void @llvm.assume(i1)
