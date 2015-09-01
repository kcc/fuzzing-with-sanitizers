





define void @sitofp_single_i32(i32 %a, float %b) nounwind ssp {
entry:






  %b.addr = alloca float, align 4
  %conv = sitofp i32 %a to float
  store float %conv, float* %b.addr, align 4
  ret void
}

define void @sitofp_single_i16(i16 %a, float %b) nounwind ssp {
entry:








  %b.addr = alloca float, align 4
  %conv = sitofp i16 %a to float
  store float %conv, float* %b.addr, align 4
  ret void
}

define void @sitofp_single_i8(i8 %a) nounwind ssp {
entry:








  %b.addr = alloca float, align 4
  %conv = sitofp i8 %a to float
  store float %conv, float* %b.addr, align 4
  ret void
}

define void @sitofp_double_i32(i32 %a, double %b) nounwind ssp {
entry:






  %b.addr = alloca double, align 8
  %conv = sitofp i32 %a to double
  store double %conv, double* %b.addr, align 8
  ret void
}

define void @sitofp_double_i16(i16 %a, double %b) nounwind ssp {
entry:








  %b.addr = alloca double, align 8
  %conv = sitofp i16 %a to double
  store double %conv, double* %b.addr, align 8
  ret void
}

define void @sitofp_double_i8(i8 %a, double %b) nounwind ssp {
entry:








  %b.addr = alloca double, align 8
  %conv = sitofp i8 %a to double
  store double %conv, double* %b.addr, align 8
  ret void
}



define void @uitofp_single_i32(i32 %a, float %b) nounwind ssp {
entry:






  %b.addr = alloca float, align 4
  %conv = uitofp i32 %a to float
  store float %conv, float* %b.addr, align 4
  ret void
}

define void @uitofp_single_i16(i16 %a, float %b) nounwind ssp {
entry:








  %b.addr = alloca float, align 4
  %conv = uitofp i16 %a to float
  store float %conv, float* %b.addr, align 4
  ret void
}

define void @uitofp_single_i8(i8 %a) nounwind ssp {
entry:








  %b.addr = alloca float, align 4
  %conv = uitofp i8 %a to float
  store float %conv, float* %b.addr, align 4
  ret void
}

define void @uitofp_double_i32(i32 %a, double %b) nounwind ssp {
entry:






  %b.addr = alloca double, align 8
  %conv = uitofp i32 %a to double
  store double %conv, double* %b.addr, align 8
  ret void
}

define void @uitofp_double_i16(i16 %a, double %b) nounwind ssp {
entry:








  %b.addr = alloca double, align 8
  %conv = uitofp i16 %a to double
  store double %conv, double* %b.addr, align 8
  ret void
}

define void @uitofp_double_i8(i8 %a, double %b) nounwind ssp {
entry:








  %b.addr = alloca double, align 8
  %conv = uitofp i8 %a to double
  store double %conv, double* %b.addr, align 8
  ret void
}



define void @fptosi_float(float %a) nounwind ssp {
entry:




  %b.addr = alloca i32, align 4
  %conv = fptosi float %a to i32
  store i32 %conv, i32* %b.addr, align 4
  ret void
}

define void @fptosi_double(double %a) nounwind ssp {
entry:




  %b.addr = alloca i32, align 8
  %conv = fptosi double %a to i32
  store i32 %conv, i32* %b.addr, align 8
  ret void
}



define void @fptoui_float(float %a) nounwind ssp {
entry:




  %b.addr = alloca i32, align 4
  %conv = fptoui float %a to i32
  store i32 %conv, i32* %b.addr, align 4
  ret void
}

define void @fptoui_double(double %a) nounwind ssp {
entry:




  %b.addr = alloca i32, align 8
  %conv = fptoui double %a to i32
  store i32 %conv, i32* %b.addr, align 8
  ret void
}
