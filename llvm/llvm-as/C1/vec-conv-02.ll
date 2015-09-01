




define void @f1(<2 x double> %val, <2 x float> *%ptr) {



  %res = fptrunc <2 x double> %val to <2 x float>
  store <2 x float> %res, <2 x float> *%ptr
  ret void
}


define float @f2(<2 x double> %vec) {



  %scalar = extractelement <2 x double> %vec, i32 0
  %ret = fptrunc double %scalar to float
  ret float %ret
}


define double @f3(<4 x float> %vec) {



  %scalar = extractelement <4 x float> %vec, i32 0
  %ret = fpext float %scalar to double
  ret double %ret
}
