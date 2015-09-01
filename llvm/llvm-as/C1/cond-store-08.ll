



declare void @foo(i64 *)


define void @f1(i64 *%ptr, i64 %alt, i32 %limit) {




  %cond = icmp ult i32 %limit, 42
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f2(i64 *%ptr, i64 %alt, i32 %limit) {




  %cond = icmp ult i32 %limit, 42
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %alt, i64 %orig
  store i64 %res, i64 *%ptr
  ret void
}


define void @f3(i64 *%base, i64 %alt, i32 %limit) {




  %ptr = getelementptr i64, i64 *%base, i64 65535
  %cond = icmp ult i32 %limit, 42
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f4(i64 *%base, i64 %alt, i32 %limit) {





  %ptr = getelementptr i64, i64 *%base, i64 65536
  %cond = icmp ult i32 %limit, 42
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f5(i64 *%base, i64 %alt, i32 %limit) {




  %ptr = getelementptr i64, i64 *%base, i64 -65536
  %cond = icmp ult i32 %limit, 42
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f6(i64 *%base, i64 %alt, i32 %limit) {





  %ptr = getelementptr i64, i64 *%base, i64 -65537
  %cond = icmp ult i32 %limit, 42
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  ret void
}


define void @f7(i64 %alt, i32 %limit) {





  %ptr = alloca i64
  call void @foo(i64 *%ptr)
  %cond = icmp ult i32 %limit, 42
  %orig = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %orig, i64 %alt
  store i64 %res, i64 *%ptr
  call void @foo(i64 *%ptr)
  ret void
}



define void @f8(i64 %a, i64 %b, i64 *%dest) {



entry:
  %cmp = icmp ule i64 %a, %b
  br i1 %cmp, label %store, label %exit

store:
  store i64 %b, i64 *%dest
  br label %exit

exit:
  ret void
}
