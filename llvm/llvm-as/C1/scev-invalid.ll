
















define void @test() {
entry:
  %xor1 = xor i32 0, 1
  br label %b17

b17:
  br i1 undef, label %b22, label %b18

b18:
  %phi1 = phi i32 [ %add1, %b18 ], [ %xor1, %b17 ]
  %add1 = add nsw i32 %phi1, -1
  %cmp1 = icmp sgt i32 %add1, 0
  br i1 %cmp1, label %b18, label %b22

b22:
  ret void
}
