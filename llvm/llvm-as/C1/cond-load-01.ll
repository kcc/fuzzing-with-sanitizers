



declare i32 @foo(i32 *)


define i32 @f1(i32 %easy, i32 *%ptr, i32 %limit) {




  %cond = icmp ult i32 %limit, 42
  %other = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %easy, i32 %other
  ret i32 %res
}


define i32 @f2(i32 %easy, i32 *%ptr, i32 %limit) {




  %cond = icmp ult i32 %limit, 42
  %other = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %other, i32 %easy
  ret i32 %res
}


define i32 @f3(i32 %easy, i32 *%base, i32 %limit) {




  %ptr = getelementptr i32, i32 *%base, i64 131071
  %cond = icmp ult i32 %limit, 42
  %other = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %easy, i32 %other
  ret i32 %res
}


define i32 @f4(i32 %easy, i32 *%base, i32 %limit) {





  %ptr = getelementptr i32, i32 *%base, i64 131072
  %cond = icmp ult i32 %limit, 42
  %other = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %easy, i32 %other
  ret i32 %res
}


define i32 @f5(i32 %easy, i32 *%base, i32 %limit) {




  %ptr = getelementptr i32, i32 *%base, i64 -131072
  %cond = icmp ult i32 %limit, 42
  %other = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %easy, i32 %other
  ret i32 %res
}


define i32 @f6(i32 %easy, i32 *%base, i32 %limit) {





  %ptr = getelementptr i32, i32 *%base, i64 -131073
  %cond = icmp ult i32 %limit, 42
  %other = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %easy, i32 %other
  ret i32 %res
}


define i32 @f7(i32 %alt, i32 %limit) {




  %ptr = alloca i32
  %easy = call i32 @foo(i32 *%ptr)
  %cond = icmp ult i32 %limit, 42
  %other = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %easy, i32 %other
  ret i32 %res
}


define i32 @f8(i32 %easy, i32 %limit, i64 %base, i64 %index) {




  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i32 *
  %cond = icmp ult i32 %limit, 42
  %other = load i32 , i32 *%ptr
  %res = select i1 %cond, i32 %easy, i32 %other
  ret i32 %res
}



define i32 @f9(i32 %easy, i32 %limit, i32 *%ptr) {



entry:
  %cmp = icmp ule i32 %easy, %limit
  br i1 %cmp, label %load, label %exit

load:
  %other = load i32 , i32 *%ptr
  br label %exit

exit:
  %res = phi i32 [ %easy, %entry ], [ %other, %load ]
  ret i32 %res
}
