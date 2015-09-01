


define i1 @sel_i1(i1 %j, i1 %k, i1 %l) {
entry:
  

  
  
  
  
  
  
  %cond = icmp ne i1 %j, 0
  %res = select i1 %cond, i1 %k, i1 %l
  ret i1 %res
}

define i8 @sel_i8(i8 %j, i8 %k, i8 %l) {
entry:
  

  
  
  
  
  
  
  
  
  %cond = icmp ne i8 %j, 0
  %res = select i1 %cond, i8 %k, i8 %l
  ret i8 %res
}

define i16 @sel_i16(i16 %j, i16 %k, i16 %l) {
entry:
  

  
  
  
  
  
  
  
  
  %cond = icmp ne i16 %j, 0
  %res = select i1 %cond, i16 %k, i16 %l
  ret i16 %res
}

define i32 @sel_i32(i32 %j, i32 %k, i32 %l) {
entry:
  

  
  
  
  
  
  
  %cond = icmp ne i32 %j, 0
  %res = select i1 %cond, i32 %k, i32 %l
  ret i32 %res
}

define float @sel_float(i32 %j, float %k, float %l) {
entry:
  

  
  
  
  
  
  
  %cond = icmp ne i32 %j, 0
  %res = select i1 %cond, float %k, float %l
  ret float %res
}

define double @sel_double(i32 %j, double %k, double %l) {
entry:
  

  
  
  
  
  
  
  
  %cond = icmp ne i32 %j, 0
  %res = select i1 %cond, double %k, double %l
  ret double %res
}
