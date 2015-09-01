





















define void @test1(float %src, i16* %dest) {
  %1 = tail call i16 @llvm.convert.to.fp16.f32(float %src)
  store i16 %1, i16* %dest, align 2
  ret void
}







define float @test2(i16* nocapture %src) {
  %1 = load i16, i16* %src, align 2
  %2 = tail call float @llvm.convert.from.fp16.f32(i16 %1)
  ret float %2
}







define float @test3(float %src) nounwind uwtable readnone {
  %1 = tail call i16 @llvm.convert.to.fp16.f32(float %src)
  %2 = tail call float @llvm.convert.from.fp16.f32(i16 %1)
  ret float %2
}










define double @test4(i16* nocapture %src) {
  %1 = load i16, i16* %src, align 2
  %2 = tail call double @llvm.convert.from.fp16.f64(i16 %1)
  ret double %2
}










define i16 @test5(double %src) {
  %val = tail call i16 @llvm.convert.to.fp16.f64(double %src)
  ret i16 %val
}





declare float @llvm.convert.from.fp16.f32(i16) nounwind readnone
declare i16 @llvm.convert.to.fp16.f32(float) nounwind readnone
declare double @llvm.convert.from.fp16.f64(i16) nounwind readnone
declare i16 @llvm.convert.to.fp16.f64(double) nounwind readnone
