



define i16 @cvt_i16_f32(float %x) {


  %a = fptoui float %x to i16
  ret i16 %a
}

define i16 @cvt_i16_f64(double %x) {


  %a = fptoui double %x to i16
  ret i16 %a
}

define i32 @cvt_i32_f32(float %x) {


  %a = fptoui float %x to i32
  ret i32 %a
}

define i32 @cvt_i32_f64(double %x) {


  %a = fptoui double %x to i32
  ret i32 %a
}


define i64 @cvt_i64_f32(float %x) {


  %a = fptoui float %x to i64
  ret i64 %a
}

define i64 @cvt_i64_f64(double %x) {


  %a = fptoui double %x to i64
  ret i64 %a
}

define float @cvt_f32_i16(i16 %x) {


  %a = uitofp i16 %x to float
  ret float %a
}

define float @cvt_f32_i32(i32 %x) {


  %a = uitofp i32 %x to float
  ret float %a
}

define float @cvt_f32_i64(i64 %x) {


  %a = uitofp i64 %x to float
  ret float %a
}

define float @cvt_f32_f64(double %x) {


  %a = fptrunc double %x to float
  ret float %a
}

define float @cvt_f32_s16(i16 %x) {


  %a = sitofp i16 %x to float
  ret float %a
}

define float @cvt_f32_s32(i32 %x) {


  %a = sitofp i32 %x to float
  ret float %a
}

define float @cvt_f32_s64(i64 %x) {


  %a = sitofp i64 %x to float
  ret float %a
}

define double @cvt_f64_i16(i16 %x) {


  %a = uitofp i16 %x to double
  ret double %a
}

define double @cvt_f64_i32(i32 %x) {


  %a = uitofp i32 %x to double
  ret double %a
}

define double @cvt_f64_i64(i64 %x) {


  %a = uitofp i64 %x to double
  ret double %a
}

define double @cvt_f64_f32(float %x) {


  %a = fpext float %x to double
  ret double %a
}

define double @cvt_f64_s16(i16 %x) {


  %a = sitofp i16 %x to double
  ret double %a
}

define double @cvt_f64_s32(i32 %x) {


  %a = sitofp i32 %x to double
  ret double %a
}

define double @cvt_f64_s64(i64 %x) {


  %a = sitofp i64 %x to double
  ret double %a
}
