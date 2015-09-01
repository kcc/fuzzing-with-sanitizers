






define void @load_f64(double addrspace(1)* %out, double addrspace(1)* %in) {
  %1 = load double, double addrspace(1)* %in
  store double %1, double addrspace(1)* %out
  ret void
}




define void @load_i64(i64 addrspace(1)* %out, i64 addrspace(1)* %in) {
  %tmp = load i64, i64 addrspace(1)* %in
  store i64 %tmp, i64 addrspace(1)* %out, align 8
  ret void
}





define void @load_const_addrspace_f64(double addrspace(1)* %out, double addrspace(2)* %in) {
  %1 = load double, double addrspace(2)* %in
  store double %1, double addrspace(1)* %out
  ret void
}
