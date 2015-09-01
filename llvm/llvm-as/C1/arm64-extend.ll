
@array = external global [0 x i32]

define i64 @foo(i32 %i) {





  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @array, i64 0, i64 %idxprom
  %tmp1 = load i32, i32* %arrayidx, align 4
  %conv = sext i32 %tmp1 to i64
  ret i64 %conv
}
