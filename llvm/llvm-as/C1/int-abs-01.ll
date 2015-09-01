




define i32 @f1(i32 %val) {



  %cmp = icmp slt i32 %val, 0
  %neg = sub i32 0, %val
  %res = select i1 %cmp, i32 %neg, i32 %val
  ret i32 %res
}


define i32 @f2(i32 %val) {



  %cmp = icmp sle i32 %val, 0
  %neg = sub i32 0, %val
  %res = select i1 %cmp, i32 %neg, i32 %val
  ret i32 %res
}


define i32 @f3(i32 %val) {



  %cmp = icmp sgt i32 %val, 0
  %neg = sub i32 0, %val
  %res = select i1 %cmp, i32 %val, i32 %neg
  ret i32 %res
}


define i32 @f4(i32 %val) {



  %cmp = icmp sge i32 %val, 0
  %neg = sub i32 0, %val
  %res = select i1 %cmp, i32 %val, i32 %neg
  ret i32 %res
}


define i64 @f5(i32 %val) {



  %ext = sext i32 %val to i64
  %cmp = icmp slt i64 %ext, 0
  %neg = sub i64 0, %ext
  %res = select i1 %cmp, i64 %neg, i64 %ext
  ret i64 %res
}


define i64 @f6(i64 %val) {



  %trunc = trunc i64 %val to i32
  %ext = sext i32 %trunc to i64
  %cmp = icmp slt i64 %ext, 0
  %neg = sub i64 0, %ext
  %res = select i1 %cmp, i64 %neg, i64 %ext
  ret i64 %res
}


define i64 @f7(i64 %val) {



  %cmp = icmp slt i64 %val, 0
  %neg = sub i64 0, %val
  %res = select i1 %cmp, i64 %neg, i64 %val
  ret i64 %res
}


define i64 @f8(i64 %val) {



  %shl = shl i64 %val, 32
  %ashr = ashr i64 %shl, 32
  %neg = sub i64 0, %ashr
  %cmp = icmp slt i64 %shl, 0
  %abs = select i1 %cmp, i64 %neg, i64 %ashr
  ret i64 %abs
}


define i64 @f9(i64 %val) {



  %shl = shl i64 %val, 32
  %ashr = ashr i64 %shl, 32
  %neg = sub i64 0, %ashr
  %cmp = icmp sle i64 %shl, 0
  %abs = select i1 %cmp, i64 %neg, i64 %ashr
  ret i64 %abs
}


define i64 @f10(i64 %val) {



  %shl = shl i64 %val, 32
  %ashr = ashr i64 %shl, 32
  %neg = sub i64 0, %ashr
  %cmp = icmp sgt i64 %shl, 0
  %abs = select i1 %cmp, i64 %ashr, i64 %neg
  ret i64 %abs
}


define i64 @f11(i64 %val) {



  %shl = shl i64 %val, 32
  %ashr = ashr i64 %shl, 32
  %neg = sub i64 0, %ashr
  %cmp = icmp sge i64 %shl, 0
  %abs = select i1 %cmp, i64 %ashr, i64 %neg
  ret i64 %abs
}


define i64 @f12(i32 %val) {



  %ext = sext i32 %val to i64
  %cmp = icmp slt i32 %val, 0
  %neg = sub i64 0, %ext
  %abs = select i1 %cmp, i64 %neg, i64 %ext
  ret i64 %abs
}
