




define float @f1(i16 *%ptr) {





  %base = load i16 , i16 *%ptr
  %ext = zext i16 %base to i32
  %full = or i32 %ext, 1065353216
  %res = bitcast i32 %full to float
  ret float %res
}



define void @f2(float %val, i8 *%ptr) {




  %res = bitcast float %val to i32
  %trunc = trunc i32 %res to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f3(float %val, i8 *%ptr, i32 %which) {





  %int = bitcast float %val to i32
  %trunc = trunc i32 %int to i8
  %old = load i8 , i8 *%ptr
  %cmp = icmp eq i32 %which, 0
  %res = select i1 %cmp, i8 %trunc, i8 %old
  store i8 %res, i8 *%ptr
  ret void
}


define void @f4(float %val, i16 *%ptr, i32 %which) {





  %int = bitcast float %val to i32
  %trunc = trunc i32 %int to i16
  %old = load i16 , i16 *%ptr
  %cmp = icmp eq i32 %which, 0
  %res = select i1 %cmp, i16 %trunc, i16 %old
  store i16 %res, i16 *%ptr
  ret void
}
