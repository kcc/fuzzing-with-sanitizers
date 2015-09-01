

declare i8* @llvm.frameaddress(i32) nounwind readnone

define i8* @f() nounwind uwtable {
entry:
  %0 = call i8* @llvm.frameaddress(i32 0)
  ret i8* %0








}
