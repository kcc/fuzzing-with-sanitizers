




define i1 @test_shift_and_cmp_not_changed1(i8 %p) #0 {
entry:
  %shlp = shl i8 %p, 5
  %andp = and i8 %shlp, -64
  %cmp = icmp slt i8 %andp, 32
  ret i1 %cmp
}




define i1 @test_shift_and_cmp_not_changed2(i8 %p) #0 {
entry:
  %shlp = ashr i8 %p, 5
  %andp = and i8 %shlp, -64
  %cmp = icmp slt i8 %andp, 32
  ret i1 %cmp
}







define i1 @test_shift_and_cmp_changed1(i8 %p, i8 %q) #0 {
entry:
  %andp = and i8 %p, 6
  %andq = and i8 %q, 8
  %or = or i8 %andq, %andp
  %shl = shl i8 %or, 5
  %ashr = ashr i8 %shl, 5
  %cmp = icmp slt i8 %ashr, 1
  ret i1 %cmp
}




define i1 @test_shift_and_cmp_changed2(i8 %p) #0 {
entry:
  %shlp = shl i8 %p, 5
  %andp = and i8 %shlp, -64
  %cmp = icmp ult i8 %andp, 32
  ret i1 %cmp
}




define i1 @test_shift_and_cmp_changed3(i8 %p) #0 {
entry:
  %shlp = shl nsw i8 %p, 5
  %andp = and i8 %shlp, -64
  %cmp = icmp slt i8 %andp, 32
  ret i1 %cmp
}




define i1 @test_shift_and_cmp_changed4(i8 %p) #0 {
entry:
  %shlp = lshr i8 %p, 5
  %andp = and i8 %shlp, -64
  %cmp = icmp slt i8 %andp, 32
  ret i1 %cmp
}

