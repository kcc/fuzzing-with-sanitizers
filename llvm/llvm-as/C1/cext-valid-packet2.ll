







define void @test(i32* nocapture %a, i32* nocapture %b, i32 %c) nounwind {
entry:
  %0 = load i32, i32* %a, align 4
  %add1 = add nsw i32 %0, 200000
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i32 3000
  store i32 %add1, i32* %arrayidx2, align 4
  ret void
}
