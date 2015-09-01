




define i64 @f1(float %a, float %b) {






  %cond = fcmp oeq float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f2(float %a, float %b) {







  %cond = fcmp olt float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f3(float %a, float %b) {






  %cond = fcmp ole float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f4(float %a, float %b) {







  %cond = fcmp ogt float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f5(float %a, float %b) {






  %cond = fcmp oge float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f6(float %a, float %b) {






  %cond = fcmp one float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f7(float %a, float %b) {






  %cond = fcmp ord float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f8(float %a, float %b) {






  %cond = fcmp uno float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f9(float %a, float %b) {






  %cond = fcmp ueq float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f10(float %a, float %b) {





  %cond = fcmp ult float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f11(float %a, float %b) {







  %cond = fcmp ule float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f12(float %a, float %b) {





  %cond = fcmp ugt float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f13(float %a, float %b) {







  %cond = fcmp uge float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}


define i64 @f14(float %a, float %b) {






  %cond = fcmp une float %a, %b
  %res = select i1 %cond, i64 -1, i64 0
  ret i64 %res
}
