





define void @fadd_f64(double addrspace(1)* %out, double addrspace(1)* %in1,
                      double addrspace(1)* %in2) {
   %r0 = load double, double addrspace(1)* %in1
   %r1 = load double, double addrspace(1)* %in2
   %r2 = fadd double %r0, %r1
   store double %r2, double addrspace(1)* %out
   ret void
}
