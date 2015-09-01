



declare <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64>, <2 x i64>) nounwind readnone
declare <2 x i64> @llvm.ppc.altivec.vsld(<2 x i64>, <2 x i64>) nounwind readnone
declare <2 x i64> @llvm.ppc.altivec.vsrd(<2 x i64>, <2 x i64>) nounwind readnone
declare <2 x i64> @llvm.ppc.altivec.vsrad(<2 x i64>, <2 x i64>) nounwind readnone

define <2 x i64> @test_vrld(<2 x i64> %x, <2 x i64> %y) nounwind readnone {
       %tmp = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %x, <2 x i64> %y)
       ret <2 x i64> %tmp

}

define <2 x i64> @test_vsld(<2 x i64> %x, <2 x i64> %y) nounwind readnone {
       %tmp = shl <2 x i64> %x, %y
       ret <2 x i64> %tmp


}

define <2 x i64> @test_vsrd(<2 x i64> %x, <2 x i64> %y) nounwind readnone {
	%tmp = lshr <2 x i64> %x, %y
	ret <2 x i64> %tmp


}

define <2 x i64> @test_vsrad(<2 x i64> %x, <2 x i64> %y) nounwind readnone {
	%tmp = ashr <2 x i64> %x, %y
	ret <2 x i64> %tmp


}
       
