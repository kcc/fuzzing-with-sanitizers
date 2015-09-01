

declare i32 @llvm.ctlz.i32(i32, i1)
declare i32 @llvm.cttz.i32(i32, i1)

define void @f(i32 %x, i1 %is_not_zero) {
entry:


  call i32 @llvm.ctlz.i32(i32 %x, i1 %is_not_zero)



  call i32 @llvm.cttz.i32(i32 %x, i1 %is_not_zero)
  ret void
}
