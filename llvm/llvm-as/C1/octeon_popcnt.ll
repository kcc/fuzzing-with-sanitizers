


define i8 @cnt8(i8 %x) nounwind readnone {
  %cnt = tail call i8 @llvm.ctpop.i8(i8 %x)
  ret i8 %cnt





}

define i16 @cnt16(i16 %x) nounwind readnone {
  %cnt = tail call i16 @llvm.ctpop.i16(i16 %x)
  ret i16 %cnt





}

define i32 @cnt32(i32 zeroext %x) nounwind readnone {
  %cnt = tail call i32 @llvm.ctpop.i32(i32 %x)
  ret i32 %cnt





}

define i64 @cnt64(i64 %x) nounwind readnone {
  %cnt = tail call i64 @llvm.ctpop.i64(i64 %x)
  ret i64 %cnt





}

declare i8 @llvm.ctpop.i8(i8) nounwind readnone
declare i16 @llvm.ctpop.i16(i16) nounwind readnone
declare i32 @llvm.ctpop.i32(i32) nounwind readnone
declare i64 @llvm.ctpop.i64(i64) nounwind readnone
