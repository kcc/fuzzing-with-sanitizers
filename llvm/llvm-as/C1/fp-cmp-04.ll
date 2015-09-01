




declare float @llvm.fabs.f32(float %f)


define float @f1(float %a, float %b, float *%dest) {




entry:
  %res = fadd float %a, %b
  %cmp = fcmp oeq float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %b, float *%dest
  br label %exit

exit:
  ret float %res
}


define float @f2(float %a, float %b, float *%dest) {




entry:
  %res = fadd float %a, %b
  %cmp = fcmp olt float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %b, float *%dest
  br label %exit

exit:
  ret float %res
}


define float @f3(float %a, float %b, float *%dest) {




entry:
  %res = fadd float %a, %b
  %cmp = fcmp ogt float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %b, float *%dest
  br label %exit

exit:
  ret float %res
}


define float @f4(float %a, float %b, float *%dest) {




entry:
  %res = fadd float %a, %b
  %cmp = fcmp ueq float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %b, float *%dest
  br label %exit

exit:
  ret float %res
}


define float @f5(float %a, float %b, float *%dest) {




entry:
  %cur = load float , float *%dest
  %res = fsub float %a, %cur
  %cmp = fcmp ult float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %b, float *%dest
  br label %exit

exit:
  ret float %res
}


define float @f6(float %dummy, float %a, float *%dest) {




entry:
  %res = call float @llvm.fabs.f32(float %a)
  %cmp = fcmp ogt float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %res, float *%dest
  br label %exit

exit:
  ret float %res
}


define float @f7(float %dummy, float %a, float *%dest) {




entry:
  %abs = call float @llvm.fabs.f32(float %a)
  %res = fsub float -0.0, %abs
  %cmp = fcmp olt float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %res, float *%dest
  br label %exit

exit:
  ret float %res
}


define float @f8(float %dummy, float %a, float *%dest) {




entry:
  %res = fsub float -0.0, %a
  %cmp = fcmp ole float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %res, float *%dest
  br label %exit

exit:
  ret float %res
}


define float @f9(float %a, float %b, float *%dest) {





entry:
  %res = fmul float %a, %b
  %cmp = fcmp one float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %b, float *%dest
  br label %exit

exit:
  ret float %res
}



define float @f10(float %a, float %b, float %c, float *%dest) {






entry:
  %add = fadd float %a, %b
  %res = fdiv float %add, %c
  %cmp = fcmp une float %res, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %b, float *%dest
  br label %exit

exit:
  ret float %res
}



define float @f11(float %a, float %b, float %c, float *%dest1, float *%dest2) {







entry:
  %add = fadd float %a, %b
  %sub = fsub float %c, %add
  store float %sub, float *%dest1
  %cmp = fcmp oeq float %add, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %sub, float *%dest2
  br label %exit

exit:
  ret float %add
}


define float @f12(float %dummy, float %val, float *%dest) {







entry:
  call void asm sideeffect "blah $0", "{f0}"(float %val)
  %cmp = fcmp olt float %val, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %val, float *%dest
  br label %exit

exit:
  ret float %val
}


define double @f13(double %dummy, double %val, double *%dest) {







entry:
  call void asm sideeffect "blah $0", "{f0}"(double %val)
  %cmp = fcmp olt double %val, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store double %val, double *%dest
  br label %exit

exit:
  ret double %val
}


define void @f14(fp128 *%ptr1, fp128 *%ptr2) {










entry:
  %val1 = load fp128 , fp128 *%ptr1
  %val2 = load fp128 , fp128 *%ptr2
  %div = fdiv fp128 %val1, %val2
  store fp128 %div, fp128 *%ptr1
  %mul = fmul fp128 %val1, %val2
  store fp128 %mul, fp128 *%ptr2
  %cmp = fcmp olt fp128 %val1, 0xL00000000000000000000000000000000
  br i1 %cmp, label %exit, label %store

store:
  call void asm sideeffect "blah", ""()
  br label %exit

exit:
  ret void
}



define float @f15(float %val, float %dummy, float *%dest) {







entry:
  call void asm sideeffect "blah $0", "{f2}"(float %val)
  %cmp = fcmp olt float %val, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %val, float *%dest
  br label %exit

exit:
  ret float %val
}



define double @f16(double %val, double %dummy, double *%dest) {







entry:
  call void asm sideeffect "blah $0", "{f2}"(double %val)
  %cmp = fcmp olt double %val, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store double %val, double *%dest
  br label %exit

exit:
  ret double %val
}


define float @f17(float %a, float %b, float *%dest) {




entry:
  %res = fadd float %a, %b
  %cmp = fcmp olt float %res, -0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %b, float *%dest
  br label %exit

exit:
  ret float %res
}



define float @f18(float %dummy, float %a, float *%dest) {




entry:
  %abs = call float @llvm.fabs.f32(float %a)
  %res = fsub float -0.0, %abs
  %cmp = fcmp ogt float %abs, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %res, float *%dest
  br label %exit

exit:
  ret float %res
}


define float @f19(float %dummy, float %a, float *%dest) {




entry:
  %res = fsub float -0.0, %a
  %cmp = fcmp oge float %a, 0.0
  br i1 %cmp, label %exit, label %store

store:
  store float %res, float *%dest
  br label %exit

exit:
  ret float %res
}
