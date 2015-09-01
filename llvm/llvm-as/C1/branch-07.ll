



declare i64 @foo()


define void @f1(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp eq i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}


define void @f2(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp ne i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}


define void @f3(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp sle i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}


define void @f4(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp slt i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}


define void @f5(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp sgt i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}


define void @f6(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp sge i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}


define i64 @f7(i64 %a, i64 %b) {





  %avec = bitcast i64 %a to <2 x i32>
  %bvec = bitcast i64 %b to <2 x i32>
  %cmp = icmp eq <2 x i32> %avec, %bvec
  %ext = sext <2 x i1> %cmp to <2 x i32>
  %ret = bitcast <2 x i32> %ext to i64
  ret i64 %ret
}


define i64 @f8(i64 %a, i64 %b) {





  %avec = bitcast i64 %a to <2 x i32>
  %bvec = bitcast i64 %b to <2 x i32>
  %cmp = icmp ne <2 x i32> %avec, %bvec
  %ext = sext <2 x i1> %cmp to <2 x i32>
  %ret = bitcast <2 x i32> %ext to i64
  ret i64 %ret
}


define void @f9(i64 %a, i64 %b, <2 x i64> *%dest) {






  %avec = bitcast i64 %a to <2 x i32>
  %bvec = bitcast i64 %b to <2 x i32>
  %cmp = icmp eq <2 x i32> %avec, %bvec
  %ext = sext <2 x i1> %cmp to <2 x i64>
  store <2 x i64> %ext, <2 x i64> *%dest
  ret void
}


define void @f10(i64 %a, i64 %b, <2 x i64> *%dest) {






  %avec = bitcast i64 %a to <2 x i32>
  %bvec = bitcast i64 %b to <2 x i32>
  %cmp = icmp ne <2 x i32> %avec, %bvec
  %ext = sext <2 x i1> %cmp to <2 x i64>
  store <2 x i64> %ext, <2 x i64> *%dest
  ret void
}
