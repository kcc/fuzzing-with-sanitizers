




define i8 @ld_global_i8(i8 addrspace(0)* %ptr) {




  %a = load i8, i8 addrspace(0)* %ptr
  ret i8 %a
}


define i16 @ld_global_i16(i16 addrspace(0)* %ptr) {




  %a = load i16, i16 addrspace(0)* %ptr
  ret i16 %a
}


define i32 @ld_global_i32(i32 addrspace(0)* %ptr) {




  %a = load i32, i32 addrspace(0)* %ptr
  ret i32 %a
}


define i64 @ld_global_i64(i64 addrspace(0)* %ptr) {




  %a = load i64, i64 addrspace(0)* %ptr
  ret i64 %a
}


define float @ld_global_f32(float addrspace(0)* %ptr) {




  %a = load float, float addrspace(0)* %ptr
  ret float %a
}


define double @ld_global_f64(double addrspace(0)* %ptr) {




  %a = load double, double addrspace(0)* %ptr
  ret double %a
}
