





define float @reassociate_adds1(float %x0, float %x1, float %x2, float %x3) {













  %t0 = fadd float %x0, %x1
  %t1 = fadd float %t0, %x2
  %t2 = fadd float %t1, %x3
  ret float %t2
}

define float @reassociate_adds2(float %x0, float %x1, float %x2, float %x3) {













  %t0 = fadd float %x0, %x1
  %t1 = fadd float %x2, %t0
  %t2 = fadd float %t1, %x3
  ret float %t2
}

define float @reassociate_adds3(float %x0, float %x1, float %x2, float %x3) {













  %t0 = fadd float %x0, %x1
  %t1 = fadd float %t0, %x2
  %t2 = fadd float %x3, %t1
  ret float %t2
}

define float @reassociate_adds4(float %x0, float %x1, float %x2, float %x3) {













  %t0 = fadd float %x0, %x1
  %t1 = fadd float %x2, %t0
  %t2 = fadd float %x3, %t1
  ret float %t2
}




define float @reassociate_adds5(float %x0, float %x1, float %x2, float %x3, float %x4, float %x5, float %x6, float %x7) {





















  %t0 = fadd float %x0, %x1
  %t1 = fadd float %t0, %x2
  %t2 = fadd float %t1, %x3
  %t3 = fadd float %t2, %x4
  %t4 = fadd float %t3, %x5
  %t5 = fadd float %t4, %x6
  %t6 = fadd float %t5, %x7
  ret float %t6
}






define float @reassociate_adds6(float %x0, float %x1, float %x2, float %x3) {













  %t0 = fdiv float %x0, %x1
  %t1 = fadd float %x2, %t0
  %t2 = fadd float %x3, %t1
  ret float %t2
}



define float @reassociate_muls1(float %x0, float %x1, float %x2, float %x3) {













  %t0 = fdiv float %x0, %x1
  %t1 = fmul float %x2, %t0
  %t2 = fmul float %x3, %t1
  ret float %t2
}



define double @reassociate_adds_double(double %x0, double %x1, double %x2, double %x3) {













  %t0 = fdiv double %x0, %x1
  %t1 = fadd double %x2, %t0
  %t2 = fadd double %x3, %t1
  ret double %t2
}



define double @reassociate_muls_double(double %x0, double %x1, double %x2, double %x3) {













  %t0 = fdiv double %x0, %x1
  %t1 = fmul double %x2, %t0
  %t2 = fmul double %x3, %t1
  ret double %t2
}



define <4 x float> @reassociate_adds_v4f32(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, <4 x float> %x3) {













  %t0 = fmul <4 x float> %x0, %x1
  %t1 = fadd <4 x float> %x2, %t0
  %t2 = fadd <4 x float> %x3, %t1
  ret <4 x float> %t2
}



define <2 x double> @reassociate_adds_v2f64(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, <2 x double> %x3) {













  %t0 = fmul <2 x double> %x0, %x1
  %t1 = fadd <2 x double> %x2, %t0
  %t2 = fadd <2 x double> %x3, %t1
  ret <2 x double> %t2
}



define <4 x float> @reassociate_muls_v4f32(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, <4 x float> %x3) {













  %t0 = fadd <4 x float> %x0, %x1
  %t1 = fmul <4 x float> %x2, %t0
  %t2 = fmul <4 x float> %x3, %t1
  ret <4 x float> %t2
}



define <2 x double> @reassociate_muls_v2f64(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, <2 x double> %x3) {













  %t0 = fadd <2 x double> %x0, %x1
  %t1 = fmul <2 x double> %x2, %t0
  %t2 = fmul <2 x double> %x3, %t1
  ret <2 x double> %t2
}



define <8 x float> @reassociate_adds_v8f32(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, <8 x float> %x3) {






  %t0 = fmul <8 x float> %x0, %x1
  %t1 = fadd <8 x float> %x2, %t0
  %t2 = fadd <8 x float> %x3, %t1
  ret <8 x float> %t2
}



define <4 x double> @reassociate_adds_v4f64(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, <4 x double> %x3) {






  %t0 = fmul <4 x double> %x0, %x1
  %t1 = fadd <4 x double> %x2, %t0
  %t2 = fadd <4 x double> %x3, %t1
  ret <4 x double> %t2
}



define <8 x float> @reassociate_muls_v8f32(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, <8 x float> %x3) {






  %t0 = fadd <8 x float> %x0, %x1
  %t1 = fmul <8 x float> %x2, %t0
  %t2 = fmul <8 x float> %x3, %t1
  ret <8 x float> %t2
}



define <4 x double> @reassociate_muls_v4f64(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, <4 x double> %x3) {






  %t0 = fadd <4 x double> %x0, %x1
  %t1 = fmul <4 x double> %x2, %t0
  %t2 = fmul <4 x double> %x3, %t1
  ret <4 x double> %t2
}



define float @reassociate_mins_single(float %x0, float %x1, float %x2, float %x3) {













  %t0 = fdiv float %x0, %x1
  %cmp1 = fcmp olt float %x2, %t0
  %sel1 = select i1 %cmp1, float %x2, float %t0
  %cmp2 = fcmp olt float %x3, %sel1
  %sel2 = select i1 %cmp2, float %x3, float %sel1
  ret float %sel2
}



define float @reassociate_maxs_single(float %x0, float %x1, float %x2, float %x3) {













  %t0 = fdiv float %x0, %x1
  %cmp1 = fcmp ogt float %x2, %t0
  %sel1 = select i1 %cmp1, float %x2, float %t0
  %cmp2 = fcmp ogt float %x3, %sel1
  %sel2 = select i1 %cmp2, float %x3, float %sel1
  ret float %sel2
}



define double @reassociate_mins_double(double %x0, double %x1, double %x2, double %x3) {













  %t0 = fdiv double %x0, %x1
  %cmp1 = fcmp olt double %x2, %t0
  %sel1 = select i1 %cmp1, double %x2, double %t0
  %cmp2 = fcmp olt double %x3, %sel1
  %sel2 = select i1 %cmp2, double %x3, double %sel1
  ret double %sel2
}



define double @reassociate_maxs_double(double %x0, double %x1, double %x2, double %x3) {













  %t0 = fdiv double %x0, %x1
  %cmp1 = fcmp ogt double %x2, %t0
  %sel1 = select i1 %cmp1, double %x2, double %t0
  %cmp2 = fcmp ogt double %x3, %sel1
  %sel2 = select i1 %cmp2, double %x3, double %sel1
  ret double %sel2
}



define <4 x float> @reassociate_mins_v4f32(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, <4 x float> %x3) {













  %t0 = fadd <4 x float> %x0, %x1
  %cmp1 = fcmp olt <4 x float> %x2, %t0
  %sel1 = select <4 x i1> %cmp1, <4 x float> %x2, <4 x float> %t0
  %cmp2 = fcmp olt <4 x float> %x3, %sel1
  %sel2 = select <4 x i1> %cmp2, <4 x float> %x3, <4 x float> %sel1
  ret <4 x float> %sel2
}



define <4 x float> @reassociate_maxs_v4f32(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, <4 x float> %x3) {













  %t0 = fadd <4 x float> %x0, %x1
  %cmp1 = fcmp ogt <4 x float> %x2, %t0
  %sel1 = select <4 x i1> %cmp1, <4 x float> %x2, <4 x float> %t0
  %cmp2 = fcmp ogt <4 x float> %x3, %sel1
  %sel2 = select <4 x i1> %cmp2, <4 x float> %x3, <4 x float> %sel1
  ret <4 x float> %sel2
}



define <2 x double> @reassociate_mins_v2f64(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, <2 x double> %x3) {













  %t0 = fadd <2 x double> %x0, %x1
  %cmp1 = fcmp olt <2 x double> %x2, %t0
  %sel1 = select <2 x i1> %cmp1, <2 x double> %x2, <2 x double> %t0
  %cmp2 = fcmp olt <2 x double> %x3, %sel1
  %sel2 = select <2 x i1> %cmp2, <2 x double> %x3, <2 x double> %sel1
  ret <2 x double> %sel2
}



define <2 x double> @reassociate_maxs_v2f64(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, <2 x double> %x3) {













  %t0 = fadd <2 x double> %x0, %x1
  %cmp1 = fcmp ogt <2 x double> %x2, %t0
  %sel1 = select <2 x i1> %cmp1, <2 x double> %x2, <2 x double> %t0
  %cmp2 = fcmp ogt <2 x double> %x3, %sel1
  %sel2 = select <2 x i1> %cmp2, <2 x double> %x3, <2 x double> %sel1
  ret <2 x double> %sel2
}



define <8 x float> @reassociate_mins_v8f32(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, <8 x float> %x3) {






  %t0 = fadd <8 x float> %x0, %x1
  %cmp1 = fcmp olt <8 x float> %x2, %t0
  %sel1 = select <8 x i1> %cmp1, <8 x float> %x2, <8 x float> %t0
  %cmp2 = fcmp olt <8 x float> %x3, %sel1
  %sel2 = select <8 x i1> %cmp2, <8 x float> %x3, <8 x float> %sel1
  ret <8 x float> %sel2
}



define <8 x float> @reassociate_maxs_v8f32(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, <8 x float> %x3) {






  %t0 = fadd <8 x float> %x0, %x1
  %cmp1 = fcmp ogt <8 x float> %x2, %t0
  %sel1 = select <8 x i1> %cmp1, <8 x float> %x2, <8 x float> %t0
  %cmp2 = fcmp ogt <8 x float> %x3, %sel1
  %sel2 = select <8 x i1> %cmp2, <8 x float> %x3, <8 x float> %sel1
  ret <8 x float> %sel2
}



define <4 x double> @reassociate_mins_v4f64(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, <4 x double> %x3) {






  %t0 = fadd <4 x double> %x0, %x1
  %cmp1 = fcmp olt <4 x double> %x2, %t0
  %sel1 = select <4 x i1> %cmp1, <4 x double> %x2, <4 x double> %t0
  %cmp2 = fcmp olt <4 x double> %x3, %sel1
  %sel2 = select <4 x i1> %cmp2, <4 x double> %x3, <4 x double> %sel1
  ret <4 x double> %sel2
}



define <4 x double> @reassociate_maxs_v4f64(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, <4 x double> %x3) {






  %t0 = fadd <4 x double> %x0, %x1
  %cmp1 = fcmp ogt <4 x double> %x2, %t0
  %sel1 = select <4 x i1> %cmp1, <4 x double> %x2, <4 x double> %t0
  %cmp2 = fcmp ogt <4 x double> %x3, %sel1
  %sel2 = select <4 x i1> %cmp2, <4 x double> %x3, <4 x double> %sel1
  ret <4 x double> %sel2
}

