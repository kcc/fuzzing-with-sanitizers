









define void @foo(i8* %p) nounwind {
bb:
  br label %bb1

bb1:                                              
  indirectbr i8* %p, [label %bb6, label %bb7, label %bb1, label %bb2, label %bb3, label %bb5, label %bb4]

bb2:                                              
  ret void

bb3:                                              
  ret void

bb4:                                              
  ret void

bb5:                                              
  br label %bb1

bb6:                                              
  ret void

bb7:                                              
  ret void
}
