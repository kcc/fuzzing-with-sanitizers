





declare { i64, double } @getFirstParam()
declare { i64, double } @getSecondParam()

define i64 @test_psubb() {
entry:
  %call = tail call { i64, double } @getFirstParam()
  %0 = extractvalue { i64, double } %call, 0
  %call2 = tail call { i64, double } @getSecondParam()
  %1 = extractvalue { i64, double } %call2, 0
  %__m1.0.insert.i = insertelement <1 x i64> undef, i64 %0, i32 0
  %__m2.0.insert.i = insertelement <1 x i64> undef, i64 %1, i32 0
  %2 = bitcast <1 x i64> %__m1.0.insert.i to <8 x i8>
  %3 = bitcast <8 x i8> %2 to x86_mmx
  %4 = bitcast <1 x i64> %__m2.0.insert.i to <8 x i8>
  %5 = bitcast <8 x i8> %4 to x86_mmx
  %6 = tail call x86_mmx @llvm.x86.mmx.psub.b(x86_mmx %3, x86_mmx %5) nounwind
  %7 = bitcast x86_mmx %6 to <8 x i8>
  %8 = bitcast <8 x i8> %7 to <1 x i64>
  %retval.0.extract.i15 = extractelement <1 x i64> %8, i32 0
  ret i64 %retval.0.extract.i15
}










define i64 @test_psubw() {
entry:
  %call = tail call { i64, double } @getFirstParam()
  %0 = extractvalue { i64, double } %call, 0
  %call2 = tail call { i64, double } @getSecondParam()
  %1 = extractvalue { i64, double } %call2, 0
  %__m1.0.insert.i = insertelement <1 x i64> undef, i64 %0, i32 0
  %__m2.0.insert.i = insertelement <1 x i64> undef, i64 %1, i32 0
  %2 = bitcast <1 x i64> %__m1.0.insert.i to <4 x i16>
  %3 = bitcast <4 x i16> %2 to x86_mmx
  %4 = bitcast <1 x i64> %__m2.0.insert.i to <4 x i16>
  %5 = bitcast <4 x i16> %4 to x86_mmx
  %6 = tail call x86_mmx @llvm.x86.mmx.psub.w(x86_mmx %3, x86_mmx %5) nounwind
  %7 = bitcast x86_mmx %6 to <4 x i16>
  %8 = bitcast <4 x i16> %7 to <1 x i64>
  %retval.0.extract.i15 = extractelement <1 x i64> %8, i32 0
  ret i64 %retval.0.extract.i15
}











define i64 @test_psubd() {
entry:
  %call = tail call { i64, double } @getFirstParam()
  %0 = extractvalue { i64, double } %call, 0
  %call2 = tail call { i64, double } @getSecondParam()
  %1 = extractvalue { i64, double } %call2, 0
  %__m1.0.insert.i = insertelement <1 x i64> undef, i64 %0, i32 0
  %__m2.0.insert.i = insertelement <1 x i64> undef, i64 %1, i32 0
  %2 = bitcast <1 x i64> %__m1.0.insert.i to <2 x i32>
  %3 = bitcast <2 x i32> %2 to x86_mmx
  %4 = bitcast <1 x i64> %__m2.0.insert.i to <2 x i32>
  %5 = bitcast <2 x i32> %4 to x86_mmx
  %6 = tail call x86_mmx @llvm.x86.mmx.psub.d(x86_mmx %3, x86_mmx %5) nounwind
  %7 = bitcast x86_mmx %6 to <2 x i32>
  %8 = bitcast <2 x i32> %7 to <1 x i64>
  %retval.0.extract.i15 = extractelement <1 x i64> %8, i32 0
  ret i64 %retval.0.extract.i15
}










define i64 @test_psubsb() {
entry:
  %call = tail call { i64, double } @getFirstParam()
  %0 = extractvalue { i64, double } %call, 0
  %call2 = tail call { i64, double } @getSecondParam()
  %1 = extractvalue { i64, double } %call2, 0
  %__m1.0.insert.i = insertelement <1 x i64> undef, i64 %0, i32 0
  %__m2.0.insert.i = insertelement <1 x i64> undef, i64 %1, i32 0
  %2 = bitcast <1 x i64> %__m1.0.insert.i to <8 x i8>
  %3 = bitcast <8 x i8> %2 to x86_mmx
  %4 = bitcast <1 x i64> %__m2.0.insert.i to <8 x i8>
  %5 = bitcast <8 x i8> %4 to x86_mmx
  %6 = tail call x86_mmx @llvm.x86.mmx.psubs.b(x86_mmx %3, x86_mmx %5) nounwind
  %7 = bitcast x86_mmx %6 to <8 x i8>
  %8 = bitcast <8 x i8> %7 to <1 x i64>
  %retval.0.extract.i15 = extractelement <1 x i64> %8, i32 0
  ret i64 %retval.0.extract.i15
}










define i64 @test_psubswv() {
entry:
  %call = tail call { i64, double } @getFirstParam()
  %0 = extractvalue { i64, double } %call, 0
  %call2 = tail call { i64, double } @getSecondParam()
  %1 = extractvalue { i64, double } %call2, 0
  %__m1.0.insert.i = insertelement <1 x i64> undef, i64 %0, i32 0
  %__m2.0.insert.i = insertelement <1 x i64> undef, i64 %1, i32 0
  %2 = bitcast <1 x i64> %__m1.0.insert.i to <4 x i16>
  %3 = bitcast <4 x i16> %2 to x86_mmx
  %4 = bitcast <1 x i64> %__m2.0.insert.i to <4 x i16>
  %5 = bitcast <4 x i16> %4 to x86_mmx
  %6 = tail call x86_mmx @llvm.x86.mmx.psubs.w(x86_mmx %3, x86_mmx %5) nounwind
  %7 = bitcast x86_mmx %6 to <4 x i16>
  %8 = bitcast <4 x i16> %7 to <1 x i64>
  %retval.0.extract.i15 = extractelement <1 x i64> %8, i32 0
  ret i64 %retval.0.extract.i15
}










define i64 @test_psubusbv() {
entry:
  %call = tail call { i64, double } @getFirstParam()
  %0 = extractvalue { i64, double } %call, 0
  %call2 = tail call { i64, double } @getSecondParam()
  %1 = extractvalue { i64, double } %call2, 0
  %__m1.0.insert.i = insertelement <1 x i64> undef, i64 %0, i32 0
  %__m2.0.insert.i = insertelement <1 x i64> undef, i64 %1, i32 0
  %2 = bitcast <1 x i64> %__m1.0.insert.i to <8 x i8>
  %3 = bitcast <8 x i8> %2 to x86_mmx
  %4 = bitcast <1 x i64> %__m2.0.insert.i to <8 x i8>
  %5 = bitcast <8 x i8> %4 to x86_mmx
  %6 = tail call x86_mmx @llvm.x86.mmx.psubus.b(x86_mmx %3, x86_mmx %5) nounwind
  %7 = bitcast x86_mmx %6 to <8 x i8>
  %8 = bitcast <8 x i8> %7 to <1 x i64>
  %retval.0.extract.i15 = extractelement <1 x i64> %8, i32 0
  ret i64 %retval.0.extract.i15
}










define i64 @test_psubuswv() {
entry:
  %call = tail call { i64, double } @getFirstParam()
  %0 = extractvalue { i64, double } %call, 0
  %call2 = tail call { i64, double } @getSecondParam()
  %1 = extractvalue { i64, double } %call2, 0
  %__m1.0.insert.i = insertelement <1 x i64> undef, i64 %0, i32 0
  %__m2.0.insert.i = insertelement <1 x i64> undef, i64 %1, i32 0
  %2 = bitcast <1 x i64> %__m1.0.insert.i to <4 x i16>
  %3 = bitcast <4 x i16> %2 to x86_mmx
  %4 = bitcast <1 x i64> %__m2.0.insert.i to <4 x i16>
  %5 = bitcast <4 x i16> %4 to x86_mmx
  %6 = tail call x86_mmx @llvm.x86.mmx.psubus.w(x86_mmx %3, x86_mmx %5) nounwind
  %7 = bitcast x86_mmx %6 to <4 x i16>
  %8 = bitcast <4 x i16> %7 to <1 x i64>
  %retval.0.extract.i15 = extractelement <1 x i64> %8, i32 0
  ret i64 %retval.0.extract.i15
}











declare x86_mmx @llvm.x86.mmx.psubus.w(x86_mmx, x86_mmx) nounwind readnone

declare x86_mmx @llvm.x86.mmx.psubus.b(x86_mmx, x86_mmx) nounwind readnone

declare x86_mmx @llvm.x86.mmx.psubs.w(x86_mmx, x86_mmx) nounwind readnone

declare x86_mmx @llvm.x86.mmx.psubs.b(x86_mmx, x86_mmx) nounwind readnone

declare x86_mmx @llvm.x86.mmx.psub.d(x86_mmx, x86_mmx) nounwind readnone

declare x86_mmx @llvm.x86.mmx.psub.w(x86_mmx, x86_mmx) nounwind readnone

declare x86_mmx @llvm.x86.mmx.psub.b(x86_mmx, x86_mmx) nounwind readnone
