








define void @br_implicit_def(i32 addrspace(1)* %out, i32 %arg) #0 {
bb:
  br i1 undef, label %bb1, label %bb2

bb1:
  store volatile i32 123, i32 addrspace(1)* %out
  ret void

bb2:
  ret void
}

attributes #0 = { nounwind }
