




define i32 @f1(i32 %a, i32 %b, i32 %limit) {




  %cond = icmp ult i32 %limit, 42
  %res = select i1 %cond, i32 %a, i32 %b
  ret i32 %res
}


define i64 @f2(i64 %a, i64 %b, i64 %limit) {




  %cond = icmp ult i64 %limit, 42
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}



define i32 @f3(i32 %a, i32 %b, i32 %limit) {




  %cond = icmp eq i32 %limit, 42
  %res = select i1 %cond, i32 %a, i32 %b
  ret i32 %res
}


define i64 @f4(i64 %a, i64 %b, i64 %limit) {




  %cond = icmp eq i64 %limit, 42
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}
