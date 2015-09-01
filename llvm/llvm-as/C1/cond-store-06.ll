



declare void @foo(double *)


define void @f1(double *%ptr, double %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  ret void
}


define void @f2(double *%ptr, double %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %alt, double %orig
  store double %res, double *%ptr
  ret void
}


define void @f3(double *%base, double %alt, i32 %limit) {







  %ptr = getelementptr double, double *%base, i64 511
  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  ret void
}


define void @f4(double *%base, double %alt, i32 %limit) {







  %ptr = getelementptr double, double *%base, i64 512
  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  ret void
}


define void @f5(double *%base, double %alt, i32 %limit) {







  %ptr = getelementptr double, double *%base, i64 65535
  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  ret void
}



define void @f6(double *%base, double %alt, i32 %limit) {








  %ptr = getelementptr double, double *%base, i64 65536
  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  ret void
}


define void @f7(double *%base, double %alt, i32 %limit) {







  %ptr = getelementptr double, double *%base, i64 -65536
  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  ret void
}



define void @f8(double *%base, double %alt, i32 %limit) {








  %ptr = getelementptr double, double *%base, i64 -65537
  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  ret void
}


define void @f9(i64 %base, i64 %index, double %alt, i32 %limit) {







  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to double *
  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  ret void
}


define void @f10(double *%ptr, double %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load volatile double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  ret void
}


define void @f11(double *%ptr, double %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store volatile double %res, double *%ptr
  ret void
}


define void @f12(double %alt, i32 %limit) {









  %ptr = alloca double
  call void @foo(double *%ptr)
  %cond = icmp ult i32 %limit, 420
  %orig = load double , double *%ptr
  %res = select i1 %cond, double %orig, double %alt
  store double %res, double *%ptr
  call void @foo(double *%ptr)
  ret void
}
