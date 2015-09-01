



define i32 @mul_add_imm(i32 %a, i32 %b) {



  %1 = mul i32 %a, %b
  %2 = add i32 %1, 4
  ret i32 %2
}

define i32 @mul_sub_imm1(i32 %a, i32 %b) {



  %1 = mul i32 %a, %b
  %2 = sub i32 4, %1
  ret i32 %2
}


define void @mul_add_imm2() {
entry:
  br label %for.body
for.body:
  br i1 undef, label %for.body, label %for.body8
for.body8:
  %0 = mul i64 undef, -3
  %mul1971 = add i64 %0, -3
  %cmp7 = icmp slt i64 %mul1971, 1390451930000
  br i1 %cmp7, label %for.body8, label %for.end20
for.end20:
  ret void
}

