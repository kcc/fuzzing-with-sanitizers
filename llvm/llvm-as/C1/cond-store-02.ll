




declare void @foo(i16 *)


define void @f1(i16 *%ptr, i16 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}


define void @f2(i16 *%ptr, i16 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %alt, i16 %orig
  store i16 %res, i16 *%ptr
  ret void
}



define void @f3(i16 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %ext = sext i16 %orig to i32
  %res = select i1 %cond, i32 %ext, i32 %alt
  %trunc = trunc i32 %res to i16
  store i16 %trunc, i16 *%ptr
  ret void
}


define void @f4(i16 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %ext = sext i16 %orig to i32
  %res = select i1 %cond, i32 %alt, i32 %ext
  %trunc = trunc i32 %res to i16
  store i16 %trunc, i16 *%ptr
  ret void
}



define void @f5(i16 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %ext = zext i16 %orig to i32
  %res = select i1 %cond, i32 %ext, i32 %alt
  %trunc = trunc i32 %res to i16
  store i16 %trunc, i16 *%ptr
  ret void
}


define void @f6(i16 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %ext = zext i16 %orig to i32
  %res = select i1 %cond, i32 %alt, i32 %ext
  %trunc = trunc i32 %res to i16
  store i16 %trunc, i16 *%ptr
  ret void
}



define void @f7(i16 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %ext = sext i16 %orig to i64
  %res = select i1 %cond, i64 %ext, i64 %alt
  %trunc = trunc i64 %res to i16
  store i16 %trunc, i16 *%ptr
  ret void
}


define void @f8(i16 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %ext = sext i16 %orig to i64
  %res = select i1 %cond, i64 %alt, i64 %ext
  %trunc = trunc i64 %res to i16
  store i16 %trunc, i16 *%ptr
  ret void
}



define void @f9(i16 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %ext = zext i16 %orig to i64
  %res = select i1 %cond, i64 %ext, i64 %alt
  %trunc = trunc i64 %res to i16
  store i16 %trunc, i16 *%ptr
  ret void
}


define void @f10(i16 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %ext = zext i16 %orig to i64
  %res = select i1 %cond, i64 %alt, i64 %ext
  %trunc = trunc i64 %res to i16
  store i16 %trunc, i16 *%ptr
  ret void
}


define void @f11(i16 *%base, i16 %alt, i32 %limit) {







  %ptr = getelementptr i16, i16 *%base, i64 2047
  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}


define void @f12(i16 *%base, i16 %alt, i32 %limit) {







  %ptr = getelementptr i16, i16 *%base, i64 2048
  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}


define void @f13(i16 *%base, i16 %alt, i32 %limit) {







  %ptr = getelementptr i16, i16 *%base, i64 262143
  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}



define void @f14(i16 *%base, i16 %alt, i32 %limit) {








  %ptr = getelementptr i16, i16 *%base, i64 262144
  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}


define void @f15(i16 *%base, i16 %alt, i32 %limit) {







  %ptr = getelementptr i16, i16 *%base, i64 -262144
  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}



define void @f16(i16 *%base, i16 %alt, i32 %limit) {








  %ptr = getelementptr i16, i16 *%base, i64 -262145
  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}


define void @f17(i64 %base, i64 %index, i16 %alt, i32 %limit) {







  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i16 *
  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}


define void @f18(i16 *%ptr, i16 %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load volatile i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}


define void @f19(i16 *%ptr, i16 %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store volatile i16 %res, i16 *%ptr
  ret void
}





define void @f20(i16 *%ptr, i16 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load atomic i16 , i16 *%ptr unordered, align 2
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  ret void
}


define void @f21(i16 *%ptr, i16 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store atomic i16 %res, i16 *%ptr unordered, align 2
  ret void
}


define void @f22(i16 %alt, i32 %limit) {









  %ptr = alloca i16
  call void @foo(i16 *%ptr)
  %cond = icmp ult i32 %limit, 420
  %orig = load i16 , i16 *%ptr
  %res = select i1 %cond, i16 %orig, i16 %alt
  store i16 %res, i16 *%ptr
  call void @foo(i16 *%ptr)
  ret void
}
