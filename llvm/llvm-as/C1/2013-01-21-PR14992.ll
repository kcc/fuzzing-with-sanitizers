





define i32 @foo(i32* %a) nounwind optsize {
entry:
  %0 = load i32, i32* %a, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %a, i32 1
  %1 = load i32, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i32 2
  %2 = load i32, i32* %arrayidx2, align 4
  %add.ptr = getelementptr inbounds i32, i32* %a, i32 3



  tail call void @bar(i32* %add.ptr) nounwind optsize
  %add = add nsw i32 %1, %0
  %add3 = add nsw i32 %add, %2
  ret i32 %add3
}

declare void @bar(i32*) optsize
