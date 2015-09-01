




define void @f1(i64 %src, double %val) {




  %ptr = inttoptr i64 %src to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}


define void @f2(i64 %src, double %val) {




  %add = add i64 %src, 4080
  %ptr = inttoptr i64 %add to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}


define void @f3(i64 %src, double %val) {




  %add = add i64 %src, 4088
  %ptr = inttoptr i64 %add to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}


define void @f4(i64 %src, double %val) {




  %add = add i64 %src, 4096
  %ptr = inttoptr i64 %add to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}


define void @f5(i64 %src, double %val) {




  %add = add i64 %src, 524272
  %ptr = inttoptr i64 %add to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}



define void @f6(i64 %src, double %val) {





  %add = add i64 %src, 524280
  %ptr = inttoptr i64 %add to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}



define void @f7(i64 %src, double %val) {




  %add = add i64 %src, -8
  %ptr = inttoptr i64 %add to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}


define void @f8(i64 %src, double %val) {




  %add = add i64 %src, -16
  %ptr = inttoptr i64 %add to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}


define void @f9(i64 %src, double %val) {




  %add = add i64 %src, -524288
  %ptr = inttoptr i64 %add to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}



define void @f10(i64 %src, double %val) {





  %add = add i64 %src, -524296
  %ptr = inttoptr i64 %add to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}


define void @f11(i64 %src, i64 %index, double %val) {




  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4088
  %ptr = inttoptr i64 %add2 to fp128 *
  %ext = fpext double %val to fp128
  store fp128 %ext, fp128 *%ptr
  ret void
}
