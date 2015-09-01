





define void @st_global_i8(i8 addrspace(0)* %ptr, i8 %a) {




  store i8 %a, i8 addrspace(0)* %ptr
  ret void
}



define void @st_global_i16(i16 addrspace(0)* %ptr, i16 %a) {




  store i16 %a, i16 addrspace(0)* %ptr
  ret void
}



define void @st_global_i32(i32 addrspace(0)* %ptr, i32 %a) {




  store i32 %a, i32 addrspace(0)* %ptr
  ret void
}



define void @st_global_i64(i64 addrspace(0)* %ptr, i64 %a) {




  store i64 %a, i64 addrspace(0)* %ptr
  ret void
}



define void @st_global_f32(float addrspace(0)* %ptr, float %a) {




  store float %a, float addrspace(0)* %ptr
  ret void
}



define void @st_global_f64(double addrspace(0)* %ptr, double %a) {




  store double %a, double addrspace(0)* %ptr
  ret void
}
