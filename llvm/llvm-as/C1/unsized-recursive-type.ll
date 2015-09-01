



%myTy = type { %myTy }
define void @foo(%myTy* %p){
  %0 = getelementptr %myTy, %myTy* %p, i32 0
  ret void
}
