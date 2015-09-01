




define void @f1(<2 x i32> *%dest) {




  store <2 x i32> <i32 1000000, i32 99999>, <2 x i32> *%dest
  ret void
}
