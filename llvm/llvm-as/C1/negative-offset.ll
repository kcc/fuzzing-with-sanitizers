


define arm_aapcscc i32 @sum(i32* nocapture readonly %p) #0 {
entry:




  %arrayidx = getelementptr inbounds i32, i32* %p, i32 -4
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %p, i32 -2
  %1 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %1, %0
  ret i32 %add
}

