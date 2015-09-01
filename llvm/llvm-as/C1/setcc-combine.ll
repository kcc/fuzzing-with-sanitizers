

define i32 @test_eq_1(<4 x i32> %A, <4 x i32> %B) {




entry:
  %cmp = icmp slt <4 x i32> %A, %B
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp eq <4 x i32> %sext, zeroinitializer
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_ne_1(<4 x i32> %A, <4 x i32> %B) {




entry:
  %cmp = icmp slt <4 x i32> %A, %B
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp ne <4 x i32> %sext, zeroinitializer
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_le_1(<4 x i32> %A, <4 x i32> %B) {



entry:
  %cmp = icmp slt <4 x i32> %A, %B
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp sle <4 x i32> %sext, zeroinitializer
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_ge_1(<4 x i32> %A, <4 x i32> %B) {




entry:
  %cmp = icmp slt <4 x i32> %A, %B
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp sge <4 x i32> %sext, zeroinitializer
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_lt_1(<4 x i32> %A, <4 x i32> %B) {




entry:
  %cmp = icmp slt <4 x i32> %A, %B
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp slt <4 x i32> %sext, zeroinitializer
  %0 = extractelement <4 x i1> %cmp, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_gt_1(<4 x i32> %A, <4 x i32> %B) {



entry:
  %cmp = icmp slt <4 x i32> %A, %B
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp sgt <4 x i32> %sext, zeroinitializer
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_eq_2(<4 x i32> %A, <4 x i32> %B) {




entry:
  %cmp = icmp slt <4 x i32> %B, %A
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp eq <4 x i32> %sext, zeroinitializer
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_ne_2(<4 x i32> %A, <4 x i32> %B) {




entry:
  %cmp = icmp slt <4 x i32> %B, %A
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp ne <4 x i32> %sext, zeroinitializer
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_le_2(<4 x i32> %A, <4 x i32> %B) {




entry:
  %cmp = icmp slt <4 x i32> %B, %A
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp sle <4 x i32> zeroinitializer, %sext
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_ge_2(<4 x i32> %A, <4 x i32> %B) {



entry:
  %cmp = icmp slt <4 x i32> %B, %A
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp sge <4 x i32> zeroinitializer, %sext
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_lt_2(<4 x i32> %A, <4 x i32> %B) {




entry:
  %cmp = icmp slt <4 x i32> %B, %A
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp slt <4 x i32> zeroinitializer, %sext
  %0 = extractelement <4 x i1> %cmp, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i32 @test_gt_2(<4 x i32> %A, <4 x i32> %B) {




entry:
  %cmp = icmp slt <4 x i32> %B, %A
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %cmp1 = icmp sgt <4 x i32> zeroinitializer, %sext
  %0 = extractelement <4 x i1> %cmp1, i32 1
  %1 = sext i1 %0 to i32
  ret i32 %1
}
