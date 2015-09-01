

declare { i8, i1 } @llvm.smul.with.overflow.i8(i8, i8) nounwind readnone

define i1 @test1(i8 %x) {
 entry:

  %rem = srem i8 %x, 15
  %t = call { i8, i1 } @llvm.smul.with.overflow.i8(i8 %rem, i8 %rem)



  %obit = extractvalue { i8, i1 } %t, 1
  ret i1 %obit
}
