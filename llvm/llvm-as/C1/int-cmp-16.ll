





define double @f1(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i32
  %cond = icmp eq i32 %ext, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i32
  %cond = icmp eq i32 %ext, 255
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i32
  %cond = icmp eq i32 %ext, 256
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f4(double %a, double %b, i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i32
  %cond = icmp eq i32 %ext, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %cond = icmp eq i32 %ext, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f6(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %cond = icmp eq i32 %ext, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f7(double %a, double %b, i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %cond = icmp eq i32 %ext, 128
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %cond = icmp eq i32 %ext, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f9(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %cond = icmp eq i32 %ext, -128
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f10(double %a, double %b, i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %cond = icmp eq i32 %ext, -129
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
