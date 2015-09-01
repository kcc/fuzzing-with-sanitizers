



define i32 @f0(i32* nocapture %p) nounwind {







  %tmp = load i32, i32* %p, align 2
  ret i32 %tmp
}

define i64 @f1(i64* nocapture %p) nounwind {






  %tmp = load i64, i64* %p, align 4
  ret i64 %tmp
}
