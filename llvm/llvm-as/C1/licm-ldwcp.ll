









define void @f(i32* nocapture %p) noreturn nounwind {
entry:
  br label %bb

bb:                                               
  store volatile i32 525509670, i32* %p, align 4
  br label %bb
}
