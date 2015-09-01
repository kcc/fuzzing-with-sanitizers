










define void @f64_oeq(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp oeq double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @f64_ogt(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp ogt double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @f64_oge(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp oge double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @f64_olt(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp olt double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @f64_ole(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp ole double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @f64_one(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp one double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @f64_ord(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp ord double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @f64_ueq(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp ueq double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @f64_ugt(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp ugt double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @f64_uge(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp uge double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @f64_ult(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp ult double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @f64_ule(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp ule double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @f64_une(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp une double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @f64_uno(i32 addrspace(1)* %out, double %a, double %b) {
entry:
  %0 = fcmp uno double %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}







define void @i64_eq(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp eq i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @i64_ne(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp ne i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @i64_ugt(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp ugt i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @i64_uge(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp uge i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @i64_ult(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp ult i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @i64_ule(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp ule i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @i64_sgt(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp sgt i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @i64_sge(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp sge i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @i64_slt(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp slt i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}



define void @i64_sle(i32 addrspace(1)* %out, i64 %a, i64 %b) {
entry:
  %0 = icmp sle i64 %a, %b
  %1 = sext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}
