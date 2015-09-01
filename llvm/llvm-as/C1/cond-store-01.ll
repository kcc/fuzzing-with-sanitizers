




declare void @foo(i8 *)


define void @f1(i8 *%ptr, i8 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}


define void @f2(i8 *%ptr, i8 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %alt, i8 %orig
  store i8 %res, i8 *%ptr
  ret void
}



define void @f3(i8 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %ext = sext i8 %orig to i32
  %res = select i1 %cond, i32 %ext, i32 %alt
  %trunc = trunc i32 %res to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f4(i8 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %ext = sext i8 %orig to i32
  %res = select i1 %cond, i32 %alt, i32 %ext
  %trunc = trunc i32 %res to i8
  store i8 %trunc, i8 *%ptr
  ret void
}



define void @f5(i8 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %ext = zext i8 %orig to i32
  %res = select i1 %cond, i32 %ext, i32 %alt
  %trunc = trunc i32 %res to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f6(i8 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %ext = zext i8 %orig to i32
  %res = select i1 %cond, i32 %alt, i32 %ext
  %trunc = trunc i32 %res to i8
  store i8 %trunc, i8 *%ptr
  ret void
}



define void @f7(i8 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %ext = sext i8 %orig to i64
  %res = select i1 %cond, i64 %ext, i64 %alt
  %trunc = trunc i64 %res to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f8(i8 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %ext = sext i8 %orig to i64
  %res = select i1 %cond, i64 %alt, i64 %ext
  %trunc = trunc i64 %res to i8
  store i8 %trunc, i8 *%ptr
  ret void
}



define void @f9(i8 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %ext = zext i8 %orig to i64
  %res = select i1 %cond, i64 %ext, i64 %alt
  %trunc = trunc i64 %res to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f10(i8 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %ext = zext i8 %orig to i64
  %res = select i1 %cond, i64 %alt, i64 %ext
  %trunc = trunc i64 %res to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f11(i8 *%base, i8 %alt, i32 %limit) {







  %ptr = getelementptr i8, i8 *%base, i64 4095
  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}


define void @f12(i8 *%base, i8 %alt, i32 %limit) {







  %ptr = getelementptr i8, i8 *%base, i64 4096
  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}


define void @f13(i8 *%base, i8 %alt, i32 %limit) {







  %ptr = getelementptr i8, i8 *%base, i64 524287
  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}



define void @f14(i8 *%base, i8 %alt, i32 %limit) {








  %ptr = getelementptr i8, i8 *%base, i64 524288
  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}


define void @f15(i8 *%base, i8 %alt, i32 %limit) {







  %ptr = getelementptr i8, i8 *%base, i64 -524288
  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}



define void @f16(i8 *%base, i8 %alt, i32 %limit) {








  %ptr = getelementptr i8, i8 *%base, i64 -524289
  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}


define void @f17(i64 %base, i64 %index, i8 %alt, i32 %limit) {







  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i8 *
  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}


define void @f18(i8 *%ptr, i8 %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load volatile i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}


define void @f19(i8 *%ptr, i8 %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store volatile i8 %res, i8 *%ptr
  ret void
}





define void @f20(i8 *%ptr, i8 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load atomic i8 , i8 *%ptr unordered, align 1
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  ret void
}


define void @f21(i8 *%ptr, i8 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store atomic i8 %res, i8 *%ptr unordered, align 1
  ret void
}


define void @f22(i8 %alt, i32 %limit) {









  %ptr = alloca i8
  call void @foo(i8 *%ptr)
  %cond = icmp ult i32 %limit, 420
  %orig = load i8 , i8 *%ptr
  %res = select i1 %cond, i8 %orig, i8 %alt
  store i8 %res, i8 *%ptr
  call void @foo(i8 *%ptr)
  ret void
}
