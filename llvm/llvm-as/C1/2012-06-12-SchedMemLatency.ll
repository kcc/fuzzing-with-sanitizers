

























define i32 @f1(i32* nocapture %p1, i32* nocapture %p2) nounwind {
entry:
  store volatile i32 65540, i32* %p1, align 4
  %0 = load volatile i32, i32* %p2, align 4
  ret i32 %0
}

define i32 @f2(i32* nocapture %p1, i32* nocapture %p2) nounwind {
entry:
  store i32 65540, i32* %p1, align 4
  %0 = load i32, i32* %p2, align 4
  ret i32 %0
}
