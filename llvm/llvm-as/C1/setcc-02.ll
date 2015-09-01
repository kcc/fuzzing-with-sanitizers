





define i32 @f1(float %a, float %b) {





  %cond = fcmp oeq float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f2(float %a, float %b) {






  %cond = fcmp olt float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f3(float %a, float %b) {





  %cond = fcmp ole float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f4(float %a, float %b) {






  %cond = fcmp ogt float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f5(float %a, float %b) {





  %cond = fcmp oge float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f6(float %a, float %b) {





  %cond = fcmp one float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f7(float %a, float %b) {





  %cond = fcmp ord float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f8(float %a, float %b) {





  %cond = fcmp uno float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f9(float %a, float %b) {





  %cond = fcmp ueq float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f10(float %a, float %b) {




  %cond = fcmp ult float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f11(float %a, float %b) {






  %cond = fcmp ule float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f12(float %a, float %b) {




  %cond = fcmp ugt float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f13(float %a, float %b) {






  %cond = fcmp uge float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f14(float %a, float %b) {





  %cond = fcmp une float %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}
