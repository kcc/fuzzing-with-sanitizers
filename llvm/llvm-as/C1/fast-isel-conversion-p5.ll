



define void @sitofp_double_i32(i32 %a, double %b) nounwind {
entry:

  %b.addr = alloca double, align 8
  %conv = sitofp i32 %a to double



  store double %conv, double* %b.addr, align 8
  ret void
}

define void @sitofp_double_i64(i64 %a, double %b) nounwind {
entry:

  %b.addr = alloca double, align 8
  %conv = sitofp i64 %a to double



  store double %conv, double* %b.addr, align 8
  ret void
}

define void @sitofp_double_i16(i16 %a, double %b) nounwind {
entry:

  %b.addr = alloca double, align 8
  %conv = sitofp i16 %a to double




  store double %conv, double* %b.addr, align 8
  ret void
}

define void @sitofp_double_i8(i8 %a, double %b) nounwind {
entry:

  %b.addr = alloca double, align 8
  %conv = sitofp i8 %a to double




  store double %conv, double* %b.addr, align 8
  ret void
}



define void @fptosi_float_i32(float %a) nounwind {
entry:

  %b.addr = alloca i32, align 4
  %conv = fptosi float %a to i32



  store i32 %conv, i32* %b.addr, align 4
  ret void
}

define void @fptosi_float_i64(float %a) nounwind {
entry:

  %b.addr = alloca i64, align 4
  %conv = fptosi float %a to i64



  store i64 %conv, i64* %b.addr, align 4
  ret void
}

define void @fptosi_double_i32(double %a) nounwind {
entry:

  %b.addr = alloca i32, align 8
  %conv = fptosi double %a to i32



  store i32 %conv, i32* %b.addr, align 8
  ret void
}

define void @fptosi_double_i64(double %a) nounwind {
entry:

  %b.addr = alloca i64, align 8
  %conv = fptosi double %a to i64



  store i64 %conv, i64* %b.addr, align 8
  ret void
}



define void @fptoui_float_i32(float %a) nounwind {
entry:

  %b.addr = alloca i32, align 4
  %conv = fptoui float %a to i32



  store i32 %conv, i32* %b.addr, align 4
  ret void
}

define void @fptoui_double_i32(double %a) nounwind {
entry:

  %b.addr = alloca i32, align 8
  %conv = fptoui double %a to i32



  store i32 %conv, i32* %b.addr, align 8
  ret void
}

