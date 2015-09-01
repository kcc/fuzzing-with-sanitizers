




define void @flt_f64(i32 addrspace(1)* %out, double addrspace(1)* %in1,
                     double addrspace(1)* %in2) {
   %r0 = load double, double addrspace(1)* %in1
   %r1 = load double, double addrspace(1)* %in2
   %r2 = fcmp ult double %r0, %r1
   %r3 = zext i1 %r2 to i32
   store i32 %r3, i32 addrspace(1)* %out
   ret void
}



define void @fle_f64(i32 addrspace(1)* %out, double addrspace(1)* %in1,
                     double addrspace(1)* %in2) {
   %r0 = load double, double addrspace(1)* %in1
   %r1 = load double, double addrspace(1)* %in2
   %r2 = fcmp ule double %r0, %r1
   %r3 = zext i1 %r2 to i32
   store i32 %r3, i32 addrspace(1)* %out
   ret void
}



define void @fgt_f64(i32 addrspace(1)* %out, double addrspace(1)* %in1,
                     double addrspace(1)* %in2) {
   %r0 = load double, double addrspace(1)* %in1
   %r1 = load double, double addrspace(1)* %in2
   %r2 = fcmp ugt double %r0, %r1
   %r3 = zext i1 %r2 to i32
   store i32 %r3, i32 addrspace(1)* %out
   ret void
}



define void @fge_f64(i32 addrspace(1)* %out, double addrspace(1)* %in1,
                     double addrspace(1)* %in2) {
   %r0 = load double, double addrspace(1)* %in1
   %r1 = load double, double addrspace(1)* %in2
   %r2 = fcmp uge double %r0, %r1
   %r3 = zext i1 %r2 to i32
   store i32 %r3, i32 addrspace(1)* %out
   ret void
}



define void @fne_f64(double addrspace(1)* %out, double addrspace(1)* %in1,
                     double addrspace(1)* %in2) {
   %r0 = load double, double addrspace(1)* %in1
   %r1 = load double, double addrspace(1)* %in2
   %r2 = fcmp une double %r0, %r1
   %r3 = select i1 %r2, double %r0, double %r1
   store double %r3, double addrspace(1)* %out
   ret void
}



define void @feq_f64(double addrspace(1)* %out, double addrspace(1)* %in1,
                     double addrspace(1)* %in2) {
   %r0 = load double, double addrspace(1)* %in1
   %r1 = load double, double addrspace(1)* %in2
   %r2 = fcmp ueq double %r0, %r1
   %r3 = select i1 %r2, double %r0, double %r1
   store double %r3, double addrspace(1)* %out
   ret void
}
