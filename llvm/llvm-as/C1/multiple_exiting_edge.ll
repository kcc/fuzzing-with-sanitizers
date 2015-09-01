


define void @normal_condition_0() nounwind {
bb38:                                             
  switch i32 undef, label %bb42 [
    i32 67, label %bb42
    i32 90, label %bb41
  ]
bb41:                                             
  br label %bb42
bb42:                                             
  ret void
}







define void @normal_condition_1() nounwind {
bb38:                                             
  switch i32 undef, label %bb41 [
    i32 67, label %bb42
    i32 90, label %bb42
  ]
bb41:                                             
  br label %bb42
bb42:                                             
  ret void
}






