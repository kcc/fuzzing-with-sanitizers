












define i32* @calc_1d(i32* %p, i32 %n) {
entry:
  %mul = mul nsw i32 %n, 21
  %add.ptr = getelementptr inbounds i32, i32* %p, i32 %mul
  ret i32* %add.ptr
}





define i32 @load_1d(i32* %p, i32 %n) #1 {
entry:
  %mul = mul nsw i32 %n, 21
  %arrayidx = getelementptr inbounds i32, i32* %p, i32 %mul
  %0 = load i32, i32* %arrayidx, align 4
  ret i32 %0
}






define i32* @calc_2d_a([100 x i32]* %p, i32 %n) {
entry:
  %mul = mul nsw i32 %n, 21
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %p, i32 0, i32 %mul
  ret i32* %arrayidx1
}





define i32 @load_2d_a([100 x i32]* %p, i32 %n) #1 {
entry:
  %mul = mul nsw i32 %n, 21
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %p, i32 0, i32 %mul
  %0 = load i32, i32* %arrayidx1, align 4
  ret i32 %0
}






define i32* @calc_2d_b([21 x i32]* %p, i32 %n) {
entry:
  %arrayidx1 = getelementptr inbounds [21 x i32], [21 x i32]* %p, i32 %n, i32 0
  ret i32* %arrayidx1
}





define i32 @load_2d_b([21 x i32]* %p, i32 %n) {
entry:
  %arrayidx1 = getelementptr inbounds [21 x i32], [21 x i32]* %p, i32 %n, i32 0
  %0 = load i32, i32* %arrayidx1, align 4
  ret i32 %0
}
