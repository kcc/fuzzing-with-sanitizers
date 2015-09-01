




@g = global i16 1
@h = global i16 1, align 1, section "foo"


define i64 @f1(i64 %src1) {




entry:
  %val = load i16 , i16 *@g
  %src2 = sext i16 %val to i64
  %cond = icmp slt i64 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i64 %src1, %src1
  br label %exit
exit:
  %res = phi i64 [ %src1, %entry ], [ %mul, %mulb ]
  ret i64 %res
}


define i64 @f2(i64 %src1) {



entry:
  %val = load i16 , i16 *@g
  %src2 = sext i16 %val to i64
  %cond = icmp ult i64 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i64 %src1, %src1
  br label %exit
exit:
  %res = phi i64 [ %src1, %entry ], [ %mul, %mulb ]
  ret i64 %res
}


define i64 @f3(i64 %src1) {




entry:
  %val = load i16 , i16 *@g
  %src2 = sext i16 %val to i64
  %cond = icmp eq i64 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i64 %src1, %src1
  br label %exit
exit:
  %res = phi i64 [ %src1, %entry ], [ %mul, %mulb ]
  ret i64 %res
}


define i64 @f4(i64 %src1) {




entry:
  %val = load i16 , i16 *@g
  %src2 = sext i16 %val to i64
  %cond = icmp ne i64 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i64 %src1, %src1
  br label %exit
exit:
  %res = phi i64 [ %src1, %entry ], [ %mul, %mulb ]
  ret i64 %res
}


define i64 @f5(i64 %src1) {





entry:
  %val = load i16 , i16 *@h, align 1
  %src2 = sext i16 %val to i64
  %cond = icmp slt i64 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i64 %src1, %src1
  br label %exit
exit:
  %res = phi i64 [ %src1, %entry ], [ %mul, %mulb ]
  ret i64 %res
}


define i64 @f6(i64 %src2) {




entry:
  %val = load i16 , i16 *@g
  %src1 = sext i16 %val to i64
  %cond = icmp slt i64 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i64 %src2, %src2
  br label %exit
exit:
  %res = phi i64 [ %src2, %entry ], [ %mul, %mulb ]
  ret i64 %res
}
