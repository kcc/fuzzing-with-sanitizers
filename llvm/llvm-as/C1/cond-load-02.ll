



declare i64 @foo(i64 *)


define i64 @f1(i64 %easy, i64 *%ptr, i64 %limit) {




  %cond = icmp ult i64 %limit, 42
  %other = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %easy, i64 %other
  ret i64 %res
}


define i64 @f2(i64 %easy, i64 *%ptr, i64 %limit) {




  %cond = icmp ult i64 %limit, 42
  %other = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %other, i64 %easy
  ret i64 %res
}


define i64 @f3(i64 %easy, i64 *%base, i64 %limit) {




  %ptr = getelementptr i64, i64 *%base, i64 65535
  %cond = icmp ult i64 %limit, 42
  %other = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %easy, i64 %other
  ret i64 %res
}


define i64 @f4(i64 %easy, i64 *%base, i64 %limit) {





  %ptr = getelementptr i64, i64 *%base, i64 65536
  %cond = icmp ult i64 %limit, 42
  %other = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %easy, i64 %other
  ret i64 %res
}


define i64 @f5(i64 %easy, i64 *%base, i64 %limit) {




  %ptr = getelementptr i64, i64 *%base, i64 -65536
  %cond = icmp ult i64 %limit, 42
  %other = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %easy, i64 %other
  ret i64 %res
}


define i64 @f6(i64 %easy, i64 *%base, i64 %limit) {





  %ptr = getelementptr i64, i64 *%base, i64 -65537
  %cond = icmp ult i64 %limit, 42
  %other = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %easy, i64 %other
  ret i64 %res
}


define i64 @f7(i64 %alt, i64 %limit) {




  %ptr = alloca i64
  %easy = call i64 @foo(i64 *%ptr)
  %cond = icmp ult i64 %limit, 42
  %other = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %easy, i64 %other
  ret i64 %res
}


define i64 @f8(i64 %easy, i64 %limit, i64 %base, i64 %index) {




  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i64 *
  %cond = icmp ult i64 %limit, 42
  %other = load i64 , i64 *%ptr
  %res = select i1 %cond, i64 %easy, i64 %other
  ret i64 %res
}



define i64 @f9(i64 %easy, i64 %limit, i64 *%ptr) {



entry:
  %cmp = icmp ule i64 %easy, %limit
  br i1 %cmp, label %load, label %exit

load:
  %other = load i64 , i64 *%ptr
  br label %exit

exit:
  %res = phi i64 [ %easy, %entry ], [ %other, %load ]
  ret i64 %res
}
