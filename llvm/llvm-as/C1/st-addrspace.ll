





define void @st_global_i8(i8 addrspace(1)* %ptr, i8 %a) {




  store i8 %a, i8 addrspace(1)* %ptr
  ret void
}

define void @st_shared_i8(i8 addrspace(3)* %ptr, i8 %a) {




  store i8 %a, i8 addrspace(3)* %ptr
  ret void
}

define void @st_local_i8(i8 addrspace(5)* %ptr, i8 %a) {




  store i8 %a, i8 addrspace(5)* %ptr
  ret void
}



define void @st_global_i16(i16 addrspace(1)* %ptr, i16 %a) {




  store i16 %a, i16 addrspace(1)* %ptr
  ret void
}

define void @st_shared_i16(i16 addrspace(3)* %ptr, i16 %a) {




  store i16 %a, i16 addrspace(3)* %ptr
  ret void
}

define void @st_local_i16(i16 addrspace(5)* %ptr, i16 %a) {




  store i16 %a, i16 addrspace(5)* %ptr
  ret void
}



define void @st_global_i32(i32 addrspace(1)* %ptr, i32 %a) {




  store i32 %a, i32 addrspace(1)* %ptr
  ret void
}

define void @st_shared_i32(i32 addrspace(3)* %ptr, i32 %a) {




  store i32 %a, i32 addrspace(3)* %ptr
  ret void
}

define void @st_local_i32(i32 addrspace(5)* %ptr, i32 %a) {




  store i32 %a, i32 addrspace(5)* %ptr
  ret void
}



define void @st_global_i64(i64 addrspace(1)* %ptr, i64 %a) {




  store i64 %a, i64 addrspace(1)* %ptr
  ret void
}

define void @st_shared_i64(i64 addrspace(3)* %ptr, i64 %a) {




  store i64 %a, i64 addrspace(3)* %ptr
  ret void
}

define void @st_local_i64(i64 addrspace(5)* %ptr, i64 %a) {




  store i64 %a, i64 addrspace(5)* %ptr
  ret void
}



define void @st_global_f32(float addrspace(1)* %ptr, float %a) {




  store float %a, float addrspace(1)* %ptr
  ret void
}

define void @st_shared_f32(float addrspace(3)* %ptr, float %a) {




  store float %a, float addrspace(3)* %ptr
  ret void
}

define void @st_local_f32(float addrspace(5)* %ptr, float %a) {




  store float %a, float addrspace(5)* %ptr
  ret void
}



define void @st_global_f64(double addrspace(1)* %ptr, double %a) {




  store double %a, double addrspace(1)* %ptr
  ret void
}

define void @st_shared_f64(double addrspace(3)* %ptr, double %a) {




  store double %a, double addrspace(3)* %ptr
  ret void
}

define void @st_local_f64(double addrspace(5)* %ptr, double %a) {




  store double %a, double addrspace(5)* %ptr
  ret void
}
