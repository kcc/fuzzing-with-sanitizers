



declare void @foo(i64 *)


define void @f1(i64 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f2(i64 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %alt, i64 %orig
  store i64 %res, i64 *%ptr
  ret void
}


define void @f3(i64 *%base, i64 %alt, i32 %limit) {







  %ptr = getelementptr i64, i64 *%base, i64 65535
  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}



define void @f4(i64 *%base, i64 %alt, i32 %limit) {








  %ptr = getelementptr i64, i64 *%base, i64 65536
  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f5(i64 *%base, i64 %alt, i32 %limit) {







  %ptr = getelementptr i64, i64 *%base, i64 -65536
  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}



define void @f6(i64 *%base, i64 %alt, i32 %limit) {








  %ptr = getelementptr i64, i64 *%base, i64 -65537
  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f7(i64 %base, i64 %index, i64 %alt, i32 %limit) {







  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i64 *
  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f8(i64 *%ptr, i64 %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load volatile i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f9(i64 *%ptr, i64 %alt, i32 %limit) {






  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store volatile i64 %res, i64 *%ptr
  ret void
}





define void @f10(i64 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load atomic i64 , i64 *%ptr unordered, align 8
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f11(i64 *%ptr, i64 %alt, i32 %limit) {







  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store atomic i64 %res, i64 *%ptr unordered, align 8
  ret void
}


define void @f12(i64 %alt, i32 %limit) {









  %ptr = alloca i64
  call void @foo(i64 *%ptr)
  %cond = icmp ult i32 %limit, 420
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  call void @foo(i64 *%ptr)
  ret void
}
