



define i32 @f1(i32 %i) nounwind {

entry:
  store volatile i32 %i, i32* inttoptr (i32 786432 to i32*), align 262144
  ret i32 %i
}

define i32* @f2(i32* nocapture %i) nounwind {
entry:

  %0 = load volatile i32, i32* inttoptr (i32 786432 to i32*), align 262144
  %1 = inttoptr i32 %0 to i32*
  ret i32* %1
  }
