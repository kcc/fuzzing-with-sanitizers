




@g = global i32 1
@h = global i32 1, align 2, section "foo"


define i32 @f1(i32 %src1) {




entry:
  %src2 = load i32 , i32 *@g
  %cond = icmp slt i32 %src1, %src2
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
  %src2 = load i32 , i32 *@g
  %cond = icmp ult i32 %src1, %src2
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
  %src2 = load i32 , i32 *@g
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
  %src2 = load i32 , i32 *@g
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
  %src2 = load i32 , i32 *@h, align 2
  %cond = icmp slt i32 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i32 %src1, %src1
  br label %exit
exit:
  %res = phi i32 [ %src1, %entry ], [ %mul, %mulb ]
  ret i32 %res
}


define i32 @f6(i32 %src1) {





entry:
  %src2 = load i32 , i32 *@h, align 2
  %cond = icmp ult i32 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i32 %src1, %src1
  br label %exit
exit:
  %res = phi i32 [ %src1, %entry ], [ %mul, %mulb ]
  ret i32 %res
}


define i32 @f7(i32 %src2) {




entry:
  %src1 = load i32 , i32 *@g
  %cond = icmp slt i32 %src1, %src2
  br i1 %cond, label %exit, label %mulb
mulb:
  %mul = mul i32 %src2, %src2
  br label %exit
exit:
  %res = phi i32 [ %src2, %entry ], [ %mul, %mulb ]
  ret i32 %res
}
