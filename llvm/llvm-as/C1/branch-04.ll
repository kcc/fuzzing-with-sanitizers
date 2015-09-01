




define void @f1(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp oeq float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f2(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp one float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f3(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp ole float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f4(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp olt float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f5(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp ogt float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f6(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp oge float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f7(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp ueq float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f8(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp une float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f9(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp ule float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f10(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp ult float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f11(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp ugt float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f12(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp uge float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}



define void @f13(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp ord float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}



define void @f14(float *%src, float %target) {





  br label %loop
loop:
  %val = load volatile float , float *%src
  %cond = fcmp uno float %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}
