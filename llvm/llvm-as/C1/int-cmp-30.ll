






define double @f1(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp ugt i32 %ext, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f2(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ugt i32 %ext, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f3(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp ult i32 %ext, 65534
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f4(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ult i32 %ext, -2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f5(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp ult i32 %ext, 65536
  %res = select i1 %cond, double %a, double %b
  ret double %res
}







define double @f6(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ult i32 %ext, 32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f7(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp ult i32 %ext, -32769
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f8(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp sgt i32 %ext, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f9(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp sgt i32 %ext, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f10(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp slt i32 %ext, 65534
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f11(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp slt i32 %ext, -2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f12(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = zext i16 %val to i32
  %cond = icmp slt i32 %ext, 65536
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f13(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp slt i32 %ext, 32766
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f14(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp slt i32 %ext, 32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f15(double %a, double %b, i16 *%ptr) {




  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp sgt i32 %ext, -32767
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f16(double %a, double %b, i16 *%ptr) {



  %val = load i16 , i16 *%ptr
  %ext = sext i16 %val to i32
  %cond = icmp sgt i32 %ext, -32769
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
