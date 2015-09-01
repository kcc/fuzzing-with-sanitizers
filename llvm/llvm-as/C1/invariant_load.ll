









define i32 @foo(i32* nocapture %p, i8* nocapture %q) {
entry:
  %0 = load i32, i32* %p, align 4, !invariant.load !3
  %conv = trunc i32 %0 to i8
  store i8 %conv, i8* %q, align 1
  %1 = load i32, i32* %p, align 4, !invariant.load !3
  %add = add nsw i32 %1, 1
  ret i32 %add





}

!3 = !{}
