

define i8 @test1(i8 %a, i8 %b) nounwind {
  %cmp = icmp ult i8 %a, %b
  %cond = zext i1 %cmp to i8
  %add = add i8 %cond, %b
  ret i8 %add


}

define i32 @test2(i32 %a, i32 %b) nounwind {
  %cmp = icmp ult i32 %a, %b
  %cond = zext i1 %cmp to i32
  %add = add i32 %cond, %b
  ret i32 %add


}

define i64 @test3(i64 %a, i64 %b) nounwind {
  %cmp = icmp ult i64 %a, %b
  %conv = zext i1 %cmp to i64
  %add = add i64 %conv, %b
  ret i64 %add


}

define i8 @test4(i8 %a, i8 %b) nounwind {
  %cmp = icmp ult i8 %a, %b
  %cond = zext i1 %cmp to i8
  %sub = sub i8 %b, %cond
  ret i8 %sub


}

define i32 @test5(i32 %a, i32 %b) nounwind {
  %cmp = icmp ult i32 %a, %b
  %cond = zext i1 %cmp to i32
  %sub = sub i32 %b, %cond
  ret i32 %sub


}

define i64 @test6(i64 %a, i64 %b) nounwind {
  %cmp = icmp ult i64 %a, %b
  %conv = zext i1 %cmp to i64
  %sub = sub i64 %b, %conv
  ret i64 %sub


}

define i8 @test7(i8 %a, i8 %b) nounwind {
  %cmp = icmp ult i8 %a, %b
  %cond = sext i1 %cmp to i8
  %sub = sub i8 %b, %cond
  ret i8 %sub


}

define i32 @test8(i32 %a, i32 %b) nounwind {
  %cmp = icmp ult i32 %a, %b
  %cond = sext i1 %cmp to i32
  %sub = sub i32 %b, %cond
  ret i32 %sub


}

define i64 @test9(i64 %a, i64 %b) nounwind {
  %cmp = icmp ult i64 %a, %b
  %conv = sext i1 %cmp to i64
  %sub = sub i64 %b, %conv
  ret i64 %sub


}
