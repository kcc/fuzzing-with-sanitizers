



declare i32 @foo()
@g1 = global i16 0

define void @f1(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp eq i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f2(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp ne i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f3(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp sle i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f4(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp slt i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f5(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp sgt i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f6(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp sge i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}



define void @f7(i8 *%targetptr) {





  br label %loop
loop:
  %val = call i32 @foo()
  %byte = load i8 , i8 *%targetptr
  %target = zext i8 %byte to i32
  %cond = icmp eq i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}


define void @f8(i16 *%targetptr) {





  br label %loop
loop:
  %val = call i32 @foo()
  %half = load i16 , i16 *%targetptr
  %target = zext i16 %half to i32
  %cond = icmp eq i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}


define void @f9(i16 *%targetptr) {





  br label %loop
loop:
  %val = call i32 @foo()
  %half = load i16 , i16 *@g1
  %target = zext i16 %half to i32
  %cond = icmp eq i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}



define void @f10(i8 *%targetptr1) {






  br label %loop
loop:
  %val = call i32 @foo()
  %targetptr2 = getelementptr i8, i8 *%targetptr1, i64 1
  %byte1 = load i8 , i8 *%targetptr1
  %byte2 = load i8 , i8 *%targetptr2
  %ext1 = zext i8 %byte1 to i32
  %ext2 = zext i8 %byte2 to i32
  %cond = icmp ult i32 %ext1, %ext2
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}


define void @f11(i16 *%targetptr1) {






  br label %loop
loop:
  %val = call i32 @foo()
  %targetptr2 = getelementptr i16, i16 *%targetptr1, i64 1
  %half1 = load i16 , i16 *%targetptr1
  %half2 = load i16 , i16 *%targetptr2
  %ext1 = zext i16 %half1 to i32
  %ext2 = zext i16 %half2 to i32
  %cond = icmp ult i32 %ext1, %ext2
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}
