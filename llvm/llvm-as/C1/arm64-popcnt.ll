


define i32 @cnt32_advsimd(i32 %x) nounwind readnone {
  %cnt = tail call i32 @llvm.ctpop.i32(i32 %x)
  ret i32 %cnt












}

define i32 @cnt32_advsimd_2(<2 x i32> %x) {
  %1 = extractelement <2 x i32> %x, i64 0
  %2 = tail call i32 @llvm.ctpop.i32(i32 %1)
  ret i32 %2












}

define i64 @cnt64_advsimd(i64 %x) nounwind readnone {
  %cnt = tail call i64 @llvm.ctpop.i64(i64 %x)
  ret i64 %cnt











}




define i32 @cnt32(i32 %x) nounwind readnone noimplicitfloat {
  %cnt = tail call i32 @llvm.ctpop.i32(i32 %x)
  ret i32 %cnt



}

define i64 @cnt64(i64 %x) nounwind readnone noimplicitfloat {
  %cnt = tail call i64 @llvm.ctpop.i64(i64 %x)
  ret i64 %cnt



}

declare i32 @llvm.ctpop.i32(i32) nounwind readnone
declare i64 @llvm.ctpop.i64(i64) nounwind readnone
