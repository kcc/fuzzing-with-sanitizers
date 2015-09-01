



declare void @foo(i32 *)


define void @f1(i32 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}


define void @f2(i32 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %alt, i32 %orig
  store i32 %res, i32 *%ptr
  ret void
}



define void @f3(i32 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %ext = sext i32 %orig to i64
  %res = select i1 %cond, i64 %ext, i64 %alt
  %trunc = trunc i64 %res to i32
  store i32 %trunc, i32 *%ptr
  ret void
}


define void @f4(i32 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %ext = sext i32 %orig to i64
  %res = select i1 %cond, i64 %alt, i64 %ext
  %trunc = trunc i64 %res to i32
  store i32 %trunc, i32 *%ptr
  ret void
}



define void @f5(i32 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %ext = zext i32 %orig to i64
  %res = select i1 %cond, i64 %ext, i64 %alt
  %trunc = trunc i64 %res to i32
  store i32 %trunc, i32 *%ptr
  ret void
}


define void @f6(i32 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %ext = zext i32 %orig to i64
  %res = select i1 %cond, i64 %alt, i64 %ext
  %trunc = trunc i64 %res to i32
  store i32 %trunc, i32 *%ptr
  ret void
}


define void @f7(i32 *%base, i32 %alt, i32 %limit) {







  %ptr = getelementptr i32, i32 *%base, i64 1023
  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}


define void @f8(i32 *%base, i32 %alt, i32 %limit) {







  %ptr = getelementptr i32, i32 *%base, i64 1024
  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}


define void @f9(i32 *%base, i32 %alt, i32 %limit) {







  %ptr = getelementptr i32, i32 *%base, i64 131071
  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}



define void @f10(i32 *%base, i32 %alt, i32 %limit) {








  %ptr = getelementptr i32, i32 *%base, i64 131072
  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}


define void @f11(i32 *%base, i32 %alt, i32 %limit) {







  %ptr = getelementptr i32, i32 *%base, i64 -131072
  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}



define void @f12(i32 *%base, i32 %alt, i32 %limit) {








  %ptr = getelementptr i32, i32 *%base, i64 -131073
  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}


define void @f13(i64 %base, i64 %index, i32 %alt, i32 %limit) {







  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i32 *
  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}


define void @f14(i32 *%ptr, i32 %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load volatile i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}


define void @f15(i32 *%ptr, i32 %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store volatile i32 %res, i32 *%ptr
  ret void
}





define void @f16(i32 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load atomic i32 , i32 *%ptr unordered, align 4
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  ret void
}


define void @f17(i32 *%ptr, i32 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store atomic i32 %res, i32 *%ptr unordered, align 4
  ret void
}


define void @f18(i32 %alt, i32 %limit) {









  %ptr = alloca i32
  call void @foo(i32 *%ptr)
  %cond = icmp ult i32 %limit, 420
  %orig = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %orig, i32 %alt
  store i32 %res, i32 *%ptr
  call void @foo(i32 *%ptr)
  ret void
}
