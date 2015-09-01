




@g = global i64 1
@h = global i64 1, align 4, section "foo"


define i64 @f1(i64 %src1) {




entry:
  %src2 = load i64 , i64 *@g
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
  %src2 = load i64 , i64 *@g
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
  %src2 = load i64 , i64 *@g
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
  %src2 = load i64 , i64 *@g
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
  %src2 = load i64 , i64 *@h, align 4
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
  %src1 = load i64 , i64 *@g
  %cond = icmp slt i64 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i64 %src2, %src2
  br label %exit
exit:
  %res = phi i64 [ %src2, %entry ], [ %mul, %mulb ]
  ret i64 %res
}
