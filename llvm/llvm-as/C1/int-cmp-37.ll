




@g = global i16 1
@h = global i16 1, align 1, section "foo"


define i32 @f1(i32 %src1) {




entry:
  %val = load i16 , i16 *@g
  %src2 = zext i16 %val to i32
  %cond = icmp ult i32 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i32 %src1, %src1
  br label %exit
exit:
  %res = phi i32 [ %src1, %entry ], [ %mul, %mulb ]
  ret i32 %res
}


define i32 @f2(i32 %src1) {



entry:
  %val = load i16 , i16 *@g
  %src2 = zext i16 %val to i32
  %cond = icmp slt i32 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i32 %src1, %src1
  br label %exit
exit:
  %res = phi i32 [ %src1, %entry ], [ %mul, %mulb ]
  ret i32 %res
}


define i32 @f3(i32 %src1) {




entry:
  %val = load i16 , i16 *@g
  %src2 = zext i16 %val to i32
  %cond = icmp eq i32 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i32 %src1, %src1
  br label %exit
exit:
  %res = phi i32 [ %src1, %entry ], [ %mul, %mulb ]
  ret i32 %res
}


define i32 @f4(i32 %src1) {




entry:
  %val = load i16 , i16 *@g
  %src2 = zext i16 %val to i32
  %cond = icmp ne i32 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i32 %src1, %src1
  br label %exit
exit:
  %res = phi i32 [ %src1, %entry ], [ %mul, %mulb ]
  ret i32 %res
}


define i32 @f5(i32 %src1) {





entry:
  %val = load i16 , i16 *@h, align 1
  %src2 = zext i16 %val to i32
  %cond = icmp ult i32 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i32 %src1, %src1
  br label %exit
exit:
  %res = phi i32 [ %src1, %entry ], [ %mul, %mulb ]
  ret i32 %res
}


define i32 @f6(i32 %src2) {




entry:
  %val = load i16 , i16 *@g
  %src1 = zext i16 %val to i32
  %cond = icmp ult i32 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i32 %src2, %src2
  br label %exit
exit:
  %res = phi i32 [ %src2, %entry ], [ %mul, %mulb ]
  ret i32 %res
}
