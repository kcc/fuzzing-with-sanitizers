
target triple = "arm64--"

@out = internal global i32 0, align 4








define i32 @test0(i32 %v0, i32 %v1, i32 %v2) {
  %cmp1 = icmp eq i32 %v0, 7
  %cmp2 = icmp sgt i32 %v1, 0
  %sel0 = select i1 %cmp1, i32 %v1, i32 %v2
  %sel1 = select i1 %cmp2, i32 %v1, i32 %sel0
  ret i32 %sel1
}
















define void @test1(i32 %bitset, i32 %val0, i32 %val1) {
  %cmp1 = icmp eq i32 %bitset, 7
  %cond = select i1 %cmp1, i32 %val0, i32 %val1
  %cmp5 = icmp ult i32 %cond, 13
  %cond11 = select i1 %cmp5, i32 %val0, i32 %val1
  %cmp3 = icmp eq i32 %bitset, 42
  %or.cond = or i1 %cmp3, %cmp5
  %cond17 = select i1 %or.cond, i32 %val0, i32 %val1
  store volatile i32 %cond11, i32* @out, align 4
  store volatile i32 %cond17, i32* @out, align 4
  ret void
}
