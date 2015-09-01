




@vsc = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5>, align 16
@vuc = global <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5>, align 16
@res_vll = common global <2 x i64> zeroinitializer, align 16
@res_vull = common global <2 x i64> zeroinitializer, align 16
@res_vsc = common global <16 x i8> zeroinitializer, align 16
@res_vuc = common global <16 x i8> zeroinitializer, align 16


define void @test1() {
entry:
  %__a.addr.i = alloca <16 x i8>, align 16
  %__b.addr.i = alloca <16 x i8>, align 16
  %0 = load <16 x i8>, <16 x i8>* @vsc, align 16
  %1 = load <16 x i8>, <16 x i8>* @vsc, align 16
  store <16 x i8> %0, <16 x i8>* %__a.addr.i, align 16
  store <16 x i8> %1, <16 x i8>* %__b.addr.i, align 16
  %2 = load <16 x i8>, <16 x i8>* %__a.addr.i, align 16
  %3 = load <16 x i8>, <16 x i8>* %__b.addr.i, align 16
  %4 = call <2 x i64> @llvm.ppc.altivec.vbpermq(<16 x i8> %2, <16 x i8> %3)
  store <2 x i64> %4, <2 x i64>* @res_vll, align 16
  ret void





}


define void @test2() {
entry:
  %__a.addr.i = alloca <16 x i8>, align 16
  %__b.addr.i = alloca <16 x i8>, align 16
  %0 = load <16 x i8>, <16 x i8>* @vuc, align 16
  %1 = load <16 x i8>, <16 x i8>* @vuc, align 16
  store <16 x i8> %0, <16 x i8>* %__a.addr.i, align 16
  store <16 x i8> %1, <16 x i8>* %__b.addr.i, align 16
  %2 = load <16 x i8>, <16 x i8>* %__a.addr.i, align 16
  %3 = load <16 x i8>, <16 x i8>* %__b.addr.i, align 16
  %4 = call <2 x i64> @llvm.ppc.altivec.vbpermq(<16 x i8> %2, <16 x i8> %3)
  store <2 x i64> %4, <2 x i64>* @res_vull, align 16
  ret void





}


define void @test3() {
entry:
  %__a.addr.i = alloca <16 x i8>, align 16
  %0 = load <16 x i8>, <16 x i8>* @vsc, align 16
  store <16 x i8> %0, <16 x i8>* %__a.addr.i, align 16
  %1 = load <16 x i8>, <16 x i8>* %__a.addr.i, align 16
  %2 = call <16 x i8> @llvm.ppc.altivec.vgbbd(<16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @res_vsc, align 16
  ret void




}


define void @test4() {
entry:
  %__a.addr.i = alloca <16 x i8>, align 16
  %0 = load <16 x i8>, <16 x i8>* @vuc, align 16
  store <16 x i8> %0, <16 x i8>* %__a.addr.i, align 16
  %1 = load <16 x i8>, <16 x i8>* %__a.addr.i, align 16
  %2 = call <16 x i8> @llvm.ppc.altivec.vgbbd(<16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* @res_vuc, align 16
  ret void




}


declare <2 x i64> @llvm.ppc.altivec.vbpermq(<16 x i8>, <16 x i8>)


declare <16 x i8> @llvm.ppc.altivec.vgbbd(<16 x i8>)
