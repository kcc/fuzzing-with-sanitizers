



@g = global i32 0


define void @f1(i8 *%src) {




entry:
  %byte = load i8 , i8 *%src
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f2(i8 *%src) {






entry:
  %byte = load i8 , i8 *%src
  store i8 0, i8 *%src
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define double @f3(i8 *%src, double %a, double %b) {




  %byte = load i8 , i8 *%src
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f4(i8 *%src, double %a, double %b) {





  %byte = load i8 , i8 *%src
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  store i8 0, i8 *%src
  ret double %res
}


define double @f5(i8 *%src, double %a, double %b) {




  %byte = load i8 , i8 *%src
  %and = and i8 %byte, 1
  %cmp = icmp ne i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f6(i8 *%src, double %a, double %b) {




  %byte = load i8 , i8 *%src
  %and = and i8 %byte, 254
  %cmp = icmp eq i8 %and, 254
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f7(i8 *%src, double %a, double %b) {




  %byte = load i8 , i8 *%src
  %and = and i8 %byte, 254
  %cmp = icmp ne i8 %and, 254
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}



define double @f8(i8 *%src, double %a, double %b) {





  %byte = load i8 , i8 *%src
  %and = and i8 %byte, 3
  %cmp = icmp eq i8 %and, 2
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f9(i8 *%src, double %a, double %b) {





  %byte = load i8 , i8 *%src
  %and = and i8 %byte, 3
  %cmp = icmp eq i8 %and, 1
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f10(i8 *%src, double %a, double %b) {




  %ptr = getelementptr i8, i8 *%src, i64 4095
  %byte = load i8 , i8 *%ptr
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f11(i8 *%src, double %a, double %b) {




  %ptr = getelementptr i8, i8 *%src, i64 4096
  %byte = load i8 , i8 *%ptr
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f12(i8 *%src, double %a, double %b) {




  %ptr = getelementptr i8, i8 *%src, i64 524287
  %byte = load i8 , i8 *%ptr
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f13(i8 *%src, double %a, double %b) {





  %ptr = getelementptr i8, i8 *%src, i64 524288
  %byte = load i8 , i8 *%ptr
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f14(i8 *%src, double %a, double %b) {




  %ptr = getelementptr i8, i8 *%src, i64 -524288
  %byte = load i8 , i8 *%ptr
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f15(i8 *%src, double %a, double %b) {





  %ptr = getelementptr i8, i8 *%src, i64 -524289
  %byte = load i8 , i8 *%ptr
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}


define double @f16(i8 *%src, i64 %index, double %a, double %b) {




  %ptr = getelementptr i8, i8 *%src, i64 %index
  %byte = load i8 , i8 *%ptr
  %and = and i8 %byte, 1
  %cmp = icmp eq i8 %and, 0
  %res = select i1 %cmp, double %b, double %a
  ret double %res
}
