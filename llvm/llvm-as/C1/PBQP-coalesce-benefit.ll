


define i32 @test(i32 %acc, i32* nocapture readonly %c) {
entry:
  %0 = load i32, i32* %c, align 4

  %add = add nsw i32 %0, %acc
  %arrayidx1 = getelementptr inbounds i32, i32* %c, i64 1
  %1 = load i32, i32* %arrayidx1, align 4
  %add2 = add nsw i32 %add, %1
  ret i32 %add2
}

