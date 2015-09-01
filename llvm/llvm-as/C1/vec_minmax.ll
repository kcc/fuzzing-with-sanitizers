



declare <2 x i64> @llvm.ppc.altivec.vmaxsd(<2 x i64>, <2 x i64>) nounwind readnone
declare <2 x i64> @llvm.ppc.altivec.vmaxud(<2 x i64>, <2 x i64>) nounwind readnone
declare <2 x i64> @llvm.ppc.altivec.vminsd(<2 x i64>, <2 x i64>) nounwind readnone
declare <2 x i64> @llvm.ppc.altivec.vminud(<2 x i64>, <2 x i64>) nounwind readnone

define <2 x i64> @test_vmaxsd(<2 x i64> %x, <2 x i64> %y) {
       %tmp = tail call <2 x i64> @llvm.ppc.altivec.vmaxsd(<2 x i64> %x, <2 x i64> %y)
       ret <2 x i64> %tmp

}

define <2 x i64> @test_vmaxud(<2 x i64> %x, <2 x i64> %y) {
       %tmp = tail call <2 x i64> @llvm.ppc.altivec.vmaxud(<2 x i64> %x, <2 x i64> %y)
       ret <2 x i64> %tmp

}

define <2 x i64> @test_vminsd(<2 x i64> %x, <2 x i64> %y) {
       %tmp = tail call <2 x i64> @llvm.ppc.altivec.vminsd(<2 x i64> %x, <2 x i64> %y)
       ret <2 x i64> %tmp

}

define <2 x i64> @test_vminud(<2 x i64> %x, <2 x i64> %y) {
       %tmp = tail call <2 x i64> @llvm.ppc.altivec.vminud(<2 x i64> %x, <2 x i64> %y)
       ret <2 x i64> %tmp

}


