






@v4f32 = global <4 x float> <float 0.0, float 0.0, float 0.0, float 0.0>
@v2f64 = global <2 x double> <double 0.0, double 0.0>
@i32 = global i32 0
@f32 = global float 0.0
@f64 = global double 0.0

define void @const_v4f32() nounwind {
  

  store volatile <4 x float> <float 0.0, float 0.0, float 0.0, float 0.0>, <4 x float>*@v4f32
  

  store volatile <4 x float> <float 1.0, float 1.0, float 1.0, float 1.0>, <4 x float>*@v4f32
  
  

  store volatile <4 x float> <float 1.0, float 1.0, float 1.0, float 31.0>, <4 x float>*@v4f32
  
  
  
  

  store volatile <4 x float> <float 65537.0, float 65537.0, float 65537.0, float 65537.0>, <4 x float>*@v4f32
  
  
  

  store volatile <4 x float> <float 1.0, float 2.0, float 1.0, float 2.0>, <4 x float>*@v4f32
  
  
  
  

  store volatile <4 x float> <float 3.0, float 4.0, float 5.0, float 6.0>, <4 x float>*@v4f32
  
  
  
  

  ret void
}

define void @const_v2f64() nounwind {
  

  store volatile <2 x double> <double 0.0, double 0.0>, <2 x double>*@v2f64
  

  store volatile <2 x double> <double 72340172838076673.0, double 72340172838076673.0>, <2 x double>*@v2f64
  
  
  
  

  store volatile <2 x double> <double 281479271743489.0, double 281479271743489.0>, <2 x double>*@v2f64
  
  
  
  

  store volatile <2 x double> <double 4294967297.0, double 4294967297.0>, <2 x double>*@v2f64
  
  
  
  

  store volatile <2 x double> <double 1.0, double 1.0>, <2 x double>*@v2f64
  
  
  
  

  store volatile <2 x double> <double 1.0, double 31.0>, <2 x double>*@v2f64
  
  
  
  

  store volatile <2 x double> <double 3.0, double 4.0>, <2 x double>*@v2f64
  
  
  
  

  ret void
}

define void @nonconst_v4f32() nounwind {
  

  %1 = load float , float *@f32
  %2 = insertelement <4 x float> undef, float %1, i32 0
  %3 = insertelement <4 x float> %2, float %1, i32 1
  %4 = insertelement <4 x float> %3, float %1, i32 2
  %5 = insertelement <4 x float> %4, float %1, i32 3
  store volatile <4 x float> %5, <4 x float>*@v4f32
  
  

  ret void
}

define void @nonconst_v2f64() nounwind {
  

  %1 = load double , double *@f64
  %2 = insertelement <2 x double> undef, double %1, i32 0
  %3 = insertelement <2 x double> %2, double %1, i32 1
  store volatile <2 x double> %3, <2 x double>*@v2f64
  
  

  ret void
}

define float @extract_v4f32() nounwind {
  

  %1 = load <4 x float>, <4 x float>* @v4f32
  

  %2 = fadd <4 x float> %1, %1
  

  %3 = extractelement <4 x float> %2, i32 1
  
  
  

  ret float %3
}

define float @extract_v4f32_elt0() nounwind {
  

  %1 = load <4 x float>, <4 x float>* @v4f32
  

  %2 = fadd <4 x float> %1, %1
  

  %3 = extractelement <4 x float> %2, i32 0
  
  
  

  ret float %3
}

define float @extract_v4f32_elt2() nounwind {
  

  %1 = load <4 x float>, <4 x float>* @v4f32
  

  %2 = fadd <4 x float> %1, %1
  

  %3 = extractelement <4 x float> %2, i32 2
  
  
  

  ret float %3
}

define float @extract_v4f32_vidx() nounwind {
  

  %1 = load <4 x float>, <4 x float>* @v4f32
  
  
  
  

  %2 = fadd <4 x float> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <4 x float> %2, i32 %3
  

  ret float %4
}

define double @extract_v2f64() nounwind {
  

  %1 = load <2 x double>, <2 x double>* @v2f64
  

  %2 = fadd <2 x double> %1, %1
  

  %3 = extractelement <2 x double> %2, i32 1
  
  
  
  
  
  
  
  

  ret double %3
}

define double @extract_v2f64_elt0() nounwind {
  

  %1 = load <2 x double>, <2 x double>* @v2f64
  

  %2 = fadd <2 x double> %1, %1
  

  %3 = extractelement <2 x double> %2, i32 0
  
  
  
  
  
  

  ret double %3
}

define double @extract_v2f64_vidx() nounwind {
  

  %1 = load <2 x double>, <2 x double>* @v2f64
  
  
  
  

  %2 = fadd <2 x double> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <2 x double> %2, i32 %3
  

  ret double %4
}

define void @insert_v4f32(float %a) nounwind {
  

  %1 = load <4 x float>, <4 x float>* @v4f32
  

  %2 = insertelement <4 x float> %1, float %a, i32 1
  
  

  store <4 x float> %2, <4 x float>* @v4f32
  

  ret void
}

define void @insert_v2f64(double %a) nounwind {
  

  %1 = load <2 x double>, <2 x double>* @v2f64
  

  %2 = insertelement <2 x double> %1, double %a, i32 1
  
  

  store <2 x double> %2, <2 x double>* @v2f64
  

  ret void
}

define void @insert_v4f32_vidx(float %a) nounwind {
  

  %1 = load <4 x float>, <4 x float>* @v4f32
  
  
  
  

  %2 = load i32, i32* @i32
  
  
  
  

  %3 = insertelement <4 x float> %1, float %a, i32 %2
  
  
  
  
  
  

  store <4 x float> %3, <4 x float>* @v4f32
  

  ret void
}

define void @insert_v2f64_vidx(double %a) nounwind {
  

  %1 = load <2 x double>, <2 x double>* @v2f64
  
  
  
  

  %2 = load i32, i32* @i32
  
  
  
  

  %3 = insertelement <2 x double> %1, double %a, i32 %2
  
  
  
  
  
  

  store <2 x double> %3, <2 x double>* @v2f64
  

  ret void
}
