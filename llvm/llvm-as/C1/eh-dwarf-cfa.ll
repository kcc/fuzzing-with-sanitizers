





declare i8* @llvm.eh.dwarf.cfa(i32) nounwind
declare i8* @llvm.frameaddress(i32) nounwind readnone

define i8* @f1() nounwind {
entry:
  %x = alloca [32 x i8], align 1
  %0 = call i8* @llvm.eh.dwarf.cfa(i32 0)
  ret i8* %0



}


define i8* @f2() nounwind {
entry:
  %x = alloca [65536 x i8], align 1
  %0 = call i8* @llvm.eh.dwarf.cfa(i32 0)
  ret i8* %0










}


define i32 @f3() nounwind {
entry:
  %x = alloca [32 x i8], align 1
  %0 = call i8* @llvm.eh.dwarf.cfa(i32 0)
  %1 = ptrtoint i8* %0 to i32
  %2 = call i8* @llvm.frameaddress(i32 0)
  %3 = ptrtoint i8* %2 to i32
  %add = add i32 %1, %3
  ret i32 %add






}


define i8* @f4() nounwind {
entry:
  %x = alloca [32 x i8], align 1
  %0 = call i8* @llvm.eh.dwarf.cfa(i32 0)
  ret i8* %0



}
