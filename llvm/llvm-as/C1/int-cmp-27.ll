





define double @f1(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp ne i32 %ext, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp ne i32 %ext, 65535
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp ne i32 %ext, 65536
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f4(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp ne i32 %ext, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ne i32 %ext, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f6(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ne i32 %ext, 32767
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f7(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ne i32 %ext, 32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ne i32 %ext, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f9(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ne i32 %ext, -32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f10(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ne i32 %ext, -32769
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
