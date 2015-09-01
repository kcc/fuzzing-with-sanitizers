




define i8 @ld_global_i8(i8 addrspace(1)* %ptr) {




  %a = load i8, i8 addrspace(1)* %ptr
  ret i8 %a
}

define i8 @ld_shared_i8(i8 addrspace(3)* %ptr) {




  %a = load i8, i8 addrspace(3)* %ptr
  ret i8 %a
}

define i8 @ld_local_i8(i8 addrspace(5)* %ptr) {




  %a = load i8, i8 addrspace(5)* %ptr
  ret i8 %a
}


define i16 @ld_global_i16(i16 addrspace(1)* %ptr) {




  %a = load i16, i16 addrspace(1)* %ptr
  ret i16 %a
}

define i16 @ld_shared_i16(i16 addrspace(3)* %ptr) {




  %a = load i16, i16 addrspace(3)* %ptr
  ret i16 %a
}

define i16 @ld_local_i16(i16 addrspace(5)* %ptr) {




  %a = load i16, i16 addrspace(5)* %ptr
  ret i16 %a
}


define i32 @ld_global_i32(i32 addrspace(1)* %ptr) {




  %a = load i32, i32 addrspace(1)* %ptr
  ret i32 %a
}

define i32 @ld_shared_i32(i32 addrspace(3)* %ptr) {




  %a = load i32, i32 addrspace(3)* %ptr
  ret i32 %a
}

define i32 @ld_local_i32(i32 addrspace(5)* %ptr) {




  %a = load i32, i32 addrspace(5)* %ptr
  ret i32 %a
}


define i64 @ld_global_i64(i64 addrspace(1)* %ptr) {




  %a = load i64, i64 addrspace(1)* %ptr
  ret i64 %a
}

define i64 @ld_shared_i64(i64 addrspace(3)* %ptr) {




  %a = load i64, i64 addrspace(3)* %ptr
  ret i64 %a
}

define i64 @ld_local_i64(i64 addrspace(5)* %ptr) {




  %a = load i64, i64 addrspace(5)* %ptr
  ret i64 %a
}


define float @ld_global_f32(float addrspace(1)* %ptr) {




  %a = load float, float addrspace(1)* %ptr
  ret float %a
}

define float @ld_shared_f32(float addrspace(3)* %ptr) {




  %a = load float, float addrspace(3)* %ptr
  ret float %a
}

define float @ld_local_f32(float addrspace(5)* %ptr) {




  %a = load float, float addrspace(5)* %ptr
  ret float %a
}


define double @ld_global_f64(double addrspace(1)* %ptr) {




  %a = load double, double addrspace(1)* %ptr
  ret double %a
}

define double @ld_shared_f64(double addrspace(3)* %ptr) {




  %a = load double, double addrspace(3)* %ptr
  ret double %a
}

define double @ld_local_f64(double addrspace(5)* %ptr) {




  %a = load double, double addrspace(5)* %ptr
  ret double %a
}
