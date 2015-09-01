





define i32 @f1(i32 %a, i32 %b) {





  %cond = icmp eq i32 %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f2(i32 %a, i32 %b) {




  %cond = icmp slt i32 %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f3(i32 %a, i32 %b) {





  %cond = icmp sle i32 %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f4(i32 %a, i32 %b) {




  %cond = icmp sgt i32 %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f5(i32 %a, i32 %b) {





  %cond = icmp sge i32 %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}


define i32 @f6(i32 %a, i32 %b) {





  %cond = icmp ne i32 %a, %b
  %res = zext i1 %cond to i32
  ret i32 %res
}
