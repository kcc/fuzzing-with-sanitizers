






























define void @fdiv_f64(double addrspace(1)* %out, double addrspace(1)* %in) nounwind {
  %gep.1 = getelementptr double, double addrspace(1)* %in, i32 1
  %num = load double, double addrspace(1)* %in
  %den = load double, double addrspace(1)* %gep.1
  %result = fdiv double %num, %den
  store double %result, double addrspace(1)* %out
  ret void
}


define void @fdiv_f64_s_v(double addrspace(1)* %out, double addrspace(1)* %in, double %num) nounwind {
  %den = load double, double addrspace(1)* %in
  %result = fdiv double %num, %den
  store double %result, double addrspace(1)* %out
  ret void
}


define void @fdiv_f64_v_s(double addrspace(1)* %out, double addrspace(1)* %in, double %den) nounwind {
  %num = load double, double addrspace(1)* %in
  %result = fdiv double %num, %den
  store double %result, double addrspace(1)* %out
  ret void
}


define void @fdiv_f64_s_s(double addrspace(1)* %out, double %num, double %den) nounwind {
  %result = fdiv double %num, %den
  store double %result, double addrspace(1)* %out
  ret void
}


define void @v_fdiv_v2f64(<2 x double> addrspace(1)* %out, <2 x double> addrspace(1)* %in) nounwind {
  %gep.1 = getelementptr <2 x double>, <2 x double> addrspace(1)* %in, i32 1
  %num = load <2 x double>, <2 x double> addrspace(1)* %in
  %den = load <2 x double>, <2 x double> addrspace(1)* %gep.1
  %result = fdiv <2 x double> %num, %den
  store <2 x double> %result, <2 x double> addrspace(1)* %out
  ret void
}


define void @s_fdiv_v2f64(<2 x double> addrspace(1)* %out, <2 x double> %num, <2 x double> %den) {
  %result = fdiv <2 x double> %num, %den
  store <2 x double> %result, <2 x double> addrspace(1)* %out
  ret void
}


define void @v_fdiv_v4f64(<4 x double> addrspace(1)* %out, <4 x double> addrspace(1)* %in) nounwind {
  %gep.1 = getelementptr <4 x double>, <4 x double> addrspace(1)* %in, i32 1
  %num = load <4 x double>, <4 x double> addrspace(1)* %in
  %den = load <4 x double>, <4 x double> addrspace(1)* %gep.1
  %result = fdiv <4 x double> %num, %den
  store <4 x double> %result, <4 x double> addrspace(1)* %out
  ret void
}


define void @s_fdiv_v4f64(<4 x double> addrspace(1)* %out, <4 x double> %num, <4 x double> %den) {
  %result = fdiv <4 x double> %num, %den
  store <4 x double> %result, <4 x double> addrspace(1)* %out
  ret void
}
