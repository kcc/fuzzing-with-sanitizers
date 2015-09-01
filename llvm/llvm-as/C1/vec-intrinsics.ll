



declare i32 @llvm.s390.lcbb(i8 *, i32)
declare <16 x i8> @llvm.s390.vlbb(i8 *, i32)
declare <16 x i8> @llvm.s390.vll(i32, i8 *)
declare <2 x i64> @llvm.s390.vpdi(<2 x i64>, <2 x i64>, i32)
declare <16 x i8> @llvm.s390.vperm(<16 x i8>, <16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vpksh(<8 x i16>, <8 x i16>)
declare <8 x i16> @llvm.s390.vpksf(<4 x i32>, <4 x i32>)
declare <4 x i32> @llvm.s390.vpksg(<2 x i64>, <2 x i64>)
declare {<16 x i8>, i32} @llvm.s390.vpkshs(<8 x i16>, <8 x i16>)
declare {<8 x i16>, i32} @llvm.s390.vpksfs(<4 x i32>, <4 x i32>)
declare {<4 x i32>, i32} @llvm.s390.vpksgs(<2 x i64>, <2 x i64>)
declare <16 x i8> @llvm.s390.vpklsh(<8 x i16>, <8 x i16>)
declare <8 x i16> @llvm.s390.vpklsf(<4 x i32>, <4 x i32>)
declare <4 x i32> @llvm.s390.vpklsg(<2 x i64>, <2 x i64>)
declare {<16 x i8>, i32} @llvm.s390.vpklshs(<8 x i16>, <8 x i16>)
declare {<8 x i16>, i32} @llvm.s390.vpklsfs(<4 x i32>, <4 x i32>)
declare {<4 x i32>, i32} @llvm.s390.vpklsgs(<2 x i64>, <2 x i64>)
declare void @llvm.s390.vstl(<16 x i8>, i32, i8 *)
declare <8 x i16> @llvm.s390.vuphb(<16 x i8>)
declare <4 x i32> @llvm.s390.vuphh(<8 x i16>)
declare <2 x i64> @llvm.s390.vuphf(<4 x i32>)
declare <8 x i16> @llvm.s390.vuplhb(<16 x i8>)
declare <4 x i32> @llvm.s390.vuplhh(<8 x i16>)
declare <2 x i64> @llvm.s390.vuplhf(<4 x i32>)
declare <8 x i16> @llvm.s390.vuplb(<16 x i8>)
declare <4 x i32> @llvm.s390.vuplhw(<8 x i16>)
declare <2 x i64> @llvm.s390.vuplf(<4 x i32>)
declare <8 x i16> @llvm.s390.vupllb(<16 x i8>)
declare <4 x i32> @llvm.s390.vupllh(<8 x i16>)
declare <2 x i64> @llvm.s390.vupllf(<4 x i32>)
declare <16 x i8> @llvm.s390.vaccb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vacch(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vaccf(<4 x i32>, <4 x i32>)
declare <2 x i64> @llvm.s390.vaccg(<2 x i64>, <2 x i64>)
declare <16 x i8> @llvm.s390.vaq(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vacq(<16 x i8>, <16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vaccq(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vacccq(<16 x i8>, <16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vavgb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vavgh(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vavgf(<4 x i32>, <4 x i32>)
declare <2 x i64> @llvm.s390.vavgg(<2 x i64>, <2 x i64>)
declare <16 x i8> @llvm.s390.vavglb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vavglh(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vavglf(<4 x i32>, <4 x i32>)
declare <2 x i64> @llvm.s390.vavglg(<2 x i64>, <2 x i64>)
declare <4 x i32> @llvm.s390.vcksm(<4 x i32>, <4 x i32>)
declare <8 x i16> @llvm.s390.vgfmb(<16 x i8>, <16 x i8>)
declare <4 x i32> @llvm.s390.vgfmh(<8 x i16>, <8 x i16>)
declare <2 x i64> @llvm.s390.vgfmf(<4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.vgfmg(<2 x i64>, <2 x i64>)
declare <8 x i16> @llvm.s390.vgfmab(<16 x i8>, <16 x i8>, <8 x i16>)
declare <4 x i32> @llvm.s390.vgfmah(<8 x i16>, <8 x i16>, <4 x i32>)
declare <2 x i64> @llvm.s390.vgfmaf(<4 x i32>, <4 x i32>, <2 x i64>)
declare <16 x i8> @llvm.s390.vgfmag(<2 x i64>, <2 x i64>, <16 x i8>)
declare <16 x i8> @llvm.s390.vmahb(<16 x i8>, <16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vmahh(<8 x i16>, <8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vmahf(<4 x i32>, <4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.vmalhb(<16 x i8>, <16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vmalhh(<8 x i16>, <8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vmalhf(<4 x i32>, <4 x i32>, <4 x i32>)
declare <8 x i16> @llvm.s390.vmaeb(<16 x i8>, <16 x i8>, <8 x i16>)
declare <4 x i32> @llvm.s390.vmaeh(<8 x i16>, <8 x i16>, <4 x i32>)
declare <2 x i64> @llvm.s390.vmaef(<4 x i32>, <4 x i32>, <2 x i64>)
declare <8 x i16> @llvm.s390.vmaleb(<16 x i8>, <16 x i8>, <8 x i16>)
declare <4 x i32> @llvm.s390.vmaleh(<8 x i16>, <8 x i16>, <4 x i32>)
declare <2 x i64> @llvm.s390.vmalef(<4 x i32>, <4 x i32>, <2 x i64>)
declare <8 x i16> @llvm.s390.vmaob(<16 x i8>, <16 x i8>, <8 x i16>)
declare <4 x i32> @llvm.s390.vmaoh(<8 x i16>, <8 x i16>, <4 x i32>)
declare <2 x i64> @llvm.s390.vmaof(<4 x i32>, <4 x i32>, <2 x i64>)
declare <8 x i16> @llvm.s390.vmalob(<16 x i8>, <16 x i8>, <8 x i16>)
declare <4 x i32> @llvm.s390.vmaloh(<8 x i16>, <8 x i16>, <4 x i32>)
declare <2 x i64> @llvm.s390.vmalof(<4 x i32>, <4 x i32>, <2 x i64>)
declare <16 x i8> @llvm.s390.vmhb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vmhh(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vmhf(<4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.vmlhb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vmlhh(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vmlhf(<4 x i32>, <4 x i32>)
declare <8 x i16> @llvm.s390.vmeb(<16 x i8>, <16 x i8>)
declare <4 x i32> @llvm.s390.vmeh(<8 x i16>, <8 x i16>)
declare <2 x i64> @llvm.s390.vmef(<4 x i32>, <4 x i32>)
declare <8 x i16> @llvm.s390.vmleb(<16 x i8>, <16 x i8>)
declare <4 x i32> @llvm.s390.vmleh(<8 x i16>, <8 x i16>)
declare <2 x i64> @llvm.s390.vmlef(<4 x i32>, <4 x i32>)
declare <8 x i16> @llvm.s390.vmob(<16 x i8>, <16 x i8>)
declare <4 x i32> @llvm.s390.vmoh(<8 x i16>, <8 x i16>)
declare <2 x i64> @llvm.s390.vmof(<4 x i32>, <4 x i32>)
declare <8 x i16> @llvm.s390.vmlob(<16 x i8>, <16 x i8>)
declare <4 x i32> @llvm.s390.vmloh(<8 x i16>, <8 x i16>)
declare <2 x i64> @llvm.s390.vmlof(<4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.verllvb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.verllvh(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.verllvf(<4 x i32>, <4 x i32>)
declare <2 x i64> @llvm.s390.verllvg(<2 x i64>, <2 x i64>)
declare <16 x i8> @llvm.s390.verllb(<16 x i8>, i32)
declare <8 x i16> @llvm.s390.verllh(<8 x i16>, i32)
declare <4 x i32> @llvm.s390.verllf(<4 x i32>, i32)
declare <2 x i64> @llvm.s390.verllg(<2 x i64>, i32)
declare <16 x i8> @llvm.s390.verimb(<16 x i8>, <16 x i8>, <16 x i8>, i32)
declare <8 x i16> @llvm.s390.verimh(<8 x i16>, <8 x i16>, <8 x i16>, i32)
declare <4 x i32> @llvm.s390.verimf(<4 x i32>, <4 x i32>, <4 x i32>, i32)
declare <2 x i64> @llvm.s390.verimg(<2 x i64>, <2 x i64>, <2 x i64>, i32)
declare <16 x i8> @llvm.s390.vsl(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vslb(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vsra(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vsrab(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vsrl(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vsrlb(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vsldb(<16 x i8>, <16 x i8>, i32)
declare <16 x i8> @llvm.s390.vscbib(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vscbih(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vscbif(<4 x i32>, <4 x i32>)
declare <2 x i64> @llvm.s390.vscbig(<2 x i64>, <2 x i64>)
declare <16 x i8> @llvm.s390.vsq(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vsbiq(<16 x i8>, <16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vscbiq(<16 x i8>, <16 x i8>)
declare <16 x i8> @llvm.s390.vsbcbiq(<16 x i8>, <16 x i8>, <16 x i8>)
declare <4 x i32> @llvm.s390.vsumb(<16 x i8>, <16 x i8>)
declare <4 x i32> @llvm.s390.vsumh(<8 x i16>, <8 x i16>)
declare <2 x i64> @llvm.s390.vsumgh(<8 x i16>, <8 x i16>)
declare <2 x i64> @llvm.s390.vsumgf(<4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.vsumqf(<4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.vsumqg(<2 x i64>, <2 x i64>)
declare i32 @llvm.s390.vtm(<16 x i8>, <16 x i8>)
declare {<16 x i8>, i32} @llvm.s390.vceqbs(<16 x i8>, <16 x i8>)
declare {<8 x i16>, i32} @llvm.s390.vceqhs(<8 x i16>, <8 x i16>)
declare {<4 x i32>, i32} @llvm.s390.vceqfs(<4 x i32>, <4 x i32>)
declare {<2 x i64>, i32} @llvm.s390.vceqgs(<2 x i64>, <2 x i64>)
declare {<16 x i8>, i32} @llvm.s390.vchbs(<16 x i8>, <16 x i8>)
declare {<8 x i16>, i32} @llvm.s390.vchhs(<8 x i16>, <8 x i16>)
declare {<4 x i32>, i32} @llvm.s390.vchfs(<4 x i32>, <4 x i32>)
declare {<2 x i64>, i32} @llvm.s390.vchgs(<2 x i64>, <2 x i64>)
declare {<16 x i8>, i32} @llvm.s390.vchlbs(<16 x i8>, <16 x i8>)
declare {<8 x i16>, i32} @llvm.s390.vchlhs(<8 x i16>, <8 x i16>)
declare {<4 x i32>, i32} @llvm.s390.vchlfs(<4 x i32>, <4 x i32>)
declare {<2 x i64>, i32} @llvm.s390.vchlgs(<2 x i64>, <2 x i64>)
declare <16 x i8> @llvm.s390.vfaeb(<16 x i8>, <16 x i8>, i32)
declare <8 x i16> @llvm.s390.vfaeh(<8 x i16>, <8 x i16>, i32)
declare <4 x i32> @llvm.s390.vfaef(<4 x i32>, <4 x i32>, i32)
declare {<16 x i8>, i32} @llvm.s390.vfaebs(<16 x i8>, <16 x i8>, i32)
declare {<8 x i16>, i32} @llvm.s390.vfaehs(<8 x i16>, <8 x i16>, i32)
declare {<4 x i32>, i32} @llvm.s390.vfaefs(<4 x i32>, <4 x i32>, i32)
declare <16 x i8> @llvm.s390.vfaezb(<16 x i8>, <16 x i8>, i32)
declare <8 x i16> @llvm.s390.vfaezh(<8 x i16>, <8 x i16>, i32)
declare <4 x i32> @llvm.s390.vfaezf(<4 x i32>, <4 x i32>, i32)
declare {<16 x i8>, i32} @llvm.s390.vfaezbs(<16 x i8>, <16 x i8>, i32)
declare {<8 x i16>, i32} @llvm.s390.vfaezhs(<8 x i16>, <8 x i16>, i32)
declare {<4 x i32>, i32} @llvm.s390.vfaezfs(<4 x i32>, <4 x i32>, i32)
declare <16 x i8> @llvm.s390.vfeeb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vfeeh(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vfeef(<4 x i32>, <4 x i32>)
declare {<16 x i8>, i32} @llvm.s390.vfeebs(<16 x i8>, <16 x i8>)
declare {<8 x i16>, i32} @llvm.s390.vfeehs(<8 x i16>, <8 x i16>)
declare {<4 x i32>, i32} @llvm.s390.vfeefs(<4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.vfeezb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vfeezh(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vfeezf(<4 x i32>, <4 x i32>)
declare {<16 x i8>, i32} @llvm.s390.vfeezbs(<16 x i8>, <16 x i8>)
declare {<8 x i16>, i32} @llvm.s390.vfeezhs(<8 x i16>, <8 x i16>)
declare {<4 x i32>, i32} @llvm.s390.vfeezfs(<4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.vfeneb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vfeneh(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vfenef(<4 x i32>, <4 x i32>)
declare {<16 x i8>, i32} @llvm.s390.vfenebs(<16 x i8>, <16 x i8>)
declare {<8 x i16>, i32} @llvm.s390.vfenehs(<8 x i16>, <8 x i16>)
declare {<4 x i32>, i32} @llvm.s390.vfenefs(<4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.vfenezb(<16 x i8>, <16 x i8>)
declare <8 x i16> @llvm.s390.vfenezh(<8 x i16>, <8 x i16>)
declare <4 x i32> @llvm.s390.vfenezf(<4 x i32>, <4 x i32>)
declare {<16 x i8>, i32} @llvm.s390.vfenezbs(<16 x i8>, <16 x i8>)
declare {<8 x i16>, i32} @llvm.s390.vfenezhs(<8 x i16>, <8 x i16>)
declare {<4 x i32>, i32} @llvm.s390.vfenezfs(<4 x i32>, <4 x i32>)
declare <16 x i8> @llvm.s390.vistrb(<16 x i8>)
declare <8 x i16> @llvm.s390.vistrh(<8 x i16>)
declare <4 x i32> @llvm.s390.vistrf(<4 x i32>)
declare {<16 x i8>, i32} @llvm.s390.vistrbs(<16 x i8>)
declare {<8 x i16>, i32} @llvm.s390.vistrhs(<8 x i16>)
declare {<4 x i32>, i32} @llvm.s390.vistrfs(<4 x i32>)
declare <16 x i8> @llvm.s390.vstrcb(<16 x i8>, <16 x i8>, <16 x i8>, i32)
declare <8 x i16> @llvm.s390.vstrch(<8 x i16>, <8 x i16>, <8 x i16>, i32)
declare <4 x i32> @llvm.s390.vstrcf(<4 x i32>, <4 x i32>, <4 x i32>, i32)
declare {<16 x i8>, i32} @llvm.s390.vstrcbs(<16 x i8>, <16 x i8>, <16 x i8>,
                                            i32)
declare {<8 x i16>, i32} @llvm.s390.vstrchs(<8 x i16>, <8 x i16>, <8 x i16>,
                                            i32)
declare {<4 x i32>, i32} @llvm.s390.vstrcfs(<4 x i32>, <4 x i32>, <4 x i32>,
                                            i32)
declare <16 x i8> @llvm.s390.vstrczb(<16 x i8>, <16 x i8>, <16 x i8>, i32)
declare <8 x i16> @llvm.s390.vstrczh(<8 x i16>, <8 x i16>, <8 x i16>, i32)
declare <4 x i32> @llvm.s390.vstrczf(<4 x i32>, <4 x i32>, <4 x i32>, i32)
declare {<16 x i8>, i32} @llvm.s390.vstrczbs(<16 x i8>, <16 x i8>, <16 x i8>,
                                             i32)
declare {<8 x i16>, i32} @llvm.s390.vstrczhs(<8 x i16>, <8 x i16>, <8 x i16>,
                                             i32)
declare {<4 x i32>, i32} @llvm.s390.vstrczfs(<4 x i32>, <4 x i32>, <4 x i32>,
                                             i32)
declare {<2 x i64>, i32} @llvm.s390.vfcedbs(<2 x double>, <2 x double>)
declare {<2 x i64>, i32} @llvm.s390.vfchdbs(<2 x double>, <2 x double>)
declare {<2 x i64>, i32} @llvm.s390.vfchedbs(<2 x double>, <2 x double>)
declare {<2 x i64>, i32} @llvm.s390.vftcidb(<2 x double>, i32)
declare <2 x double> @llvm.s390.vfidb(<2 x double>, i32, i32)


define i32 @test_lcbb1(i8 *%ptr) {



  %res = call i32 @llvm.s390.lcbb(i8 *%ptr, i32 0)
  ret i32 %res
}


define i32 @test_lcbb2(i8 *%ptr) {



  %res = call i32 @llvm.s390.lcbb(i8 *%ptr, i32 15)
  ret i32 %res
}


define i32 @test_lcbb3(i8 *%base, i64 %index) {



  %add = add i64 %index, 4095
  %ptr = getelementptr i8, i8 *%base, i64 %add
  %res = call i32 @llvm.s390.lcbb(i8 *%ptr, i32 4)
  ret i32 %res
}


define i32 @test_lcbb4(i8 *%base) {



  %ptr = getelementptr i8, i8 *%base, i64 4096
  %res = call i32 @llvm.s390.lcbb(i8 *%ptr, i32 5)
  ret i32 %res
}


define <16 x i8> @test_vlbb1(i8 *%ptr) {



  %res = call <16 x i8> @llvm.s390.vlbb(i8 *%ptr, i32 0)
  ret <16 x i8> %res
}


define <16 x i8> @test_vlbb2(i8 *%ptr) {



  %res = call <16 x i8> @llvm.s390.vlbb(i8 *%ptr, i32 15)
  ret <16 x i8> %res
}


define <16 x i8> @test_vlbb3(i8 *%base, i64 %index) {



  %add = add i64 %index, 4095
  %ptr = getelementptr i8, i8 *%base, i64 %add
  %res = call <16 x i8> @llvm.s390.vlbb(i8 *%ptr, i32 4)
  ret <16 x i8> %res
}


define <16 x i8> @test_vlbb4(i8 *%base) {



  %ptr = getelementptr i8, i8 *%base, i64 4096
  %res = call <16 x i8> @llvm.s390.vlbb(i8 *%ptr, i32 5)
  ret <16 x i8> %res
}


define <16 x i8> @test_vll1(i8 *%ptr, i32 %length) {



  %res = call <16 x i8> @llvm.s390.vll(i32 %length, i8 *%ptr)
  ret <16 x i8> %res
}


define <16 x i8> @test_vll2(i8 *%base, i32 %length) {



  %ptr = getelementptr i8, i8 *%base, i64 4095
  %res = call <16 x i8> @llvm.s390.vll(i32 %length, i8 *%ptr)
  ret <16 x i8> %res
}


define <16 x i8> @test_vll3(i8 *%base, i32 %length) {



  %ptr = getelementptr i8, i8 *%base, i64 4096
  %res = call <16 x i8> @llvm.s390.vll(i32 %length, i8 *%ptr)
  ret <16 x i8> %res
}


define <16 x i8> @test_vll4(i8 *%base, i64 %index, i32 %length) {



  %ptr = getelementptr i8, i8 *%base, i64 %index
  %res = call <16 x i8> @llvm.s390.vll(i32 %length, i8 *%ptr)
  ret <16 x i8> %res
}


define <2 x i64> @test_vpdi1(<2 x i64> %a, <2 x i64> %b) {



  %res = call <2 x i64> @llvm.s390.vpdi(<2 x i64> %a, <2 x i64> %b, i32 0)
  ret <2 x i64> %res
}


define <2 x i64> @test_vpdi2(<2 x i64> %a, <2 x i64> %b) {



  %res = call <2 x i64> @llvm.s390.vpdi(<2 x i64> %a, <2 x i64> %b, i32 10)
  ret <2 x i64> %res
}


define <16 x i8> @test_vperm(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vperm(<16 x i8> %a, <16 x i8> %b,
                                         <16 x i8> %c)
  ret <16 x i8> %res
}


define <16 x i8> @test_vpksh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <16 x i8> @llvm.s390.vpksh(<8 x i16> %a, <8 x i16> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vpksf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <8 x i16> @llvm.s390.vpksf(<4 x i32> %a, <4 x i32> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vpksg(<2 x i64> %a, <2 x i64> %b) {



  %res = call <4 x i32> @llvm.s390.vpksg(<2 x i64> %a, <2 x i64> %b)
  ret <4 x i32> %res
}


define <16 x i8> @test_vpkshs(<8 x i16> %a, <8 x i16> %b, i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vpkshs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <16 x i8> @test_vpkshs_all_store(<8 x i16> %a, <8 x i16> %b, i32 *%ptr) {





  %call = call {<16 x i8>, i32} @llvm.s390.vpkshs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  %cmp = icmp uge i32 %cc, 3
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <16 x i8> %res
}


define <8 x i16> @test_vpksfs(<4 x i32> %a, <4 x i32> %b, i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vpksfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <8 x i16> @test_vpksfs_any_store(<4 x i32> %a, <4 x i32> %b, i32 *%ptr) {





  %call = call {<8 x i16>, i32} @llvm.s390.vpksfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  %cmp = icmp ugt i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <8 x i16> %res
}


define <4 x i32> @test_vpksgs(<2 x i64> %a, <2 x i64> %b, i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vpksgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <4 x i32> @test_vpksgs_none_store(<2 x i64> %a, <2 x i64> %b,
                                         i32 *%ptr) {





  %call = call {<4 x i32>, i32} @llvm.s390.vpksgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  %cmp = icmp sle i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <4 x i32> %res
}


define <16 x i8> @test_vpklsh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <16 x i8> @llvm.s390.vpklsh(<8 x i16> %a, <8 x i16> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vpklsf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <8 x i16> @llvm.s390.vpklsf(<4 x i32> %a, <4 x i32> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vpklsg(<2 x i64> %a, <2 x i64> %b) {



  %res = call <4 x i32> @llvm.s390.vpklsg(<2 x i64> %a, <2 x i64> %b)
  ret <4 x i32> %res
}


define <16 x i8> @test_vpklshs(<8 x i16> %a, <8 x i16> %b, i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vpklshs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <16 x i8> @test_vpklshs_all_store(<8 x i16> %a, <8 x i16> %b,
                                         i32 *%ptr) {





  %call = call {<16 x i8>, i32} @llvm.s390.vpklshs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  %cmp = icmp eq i32 %cc, 3
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <16 x i8> %res
}


define <8 x i16> @test_vpklsfs(<4 x i32> %a, <4 x i32> %b, i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vpklsfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <8 x i16> @test_vpklsfs_any_store(<4 x i32> %a, <4 x i32> %b,
                                         i32 *%ptr) {





  %call = call {<8 x i16>, i32} @llvm.s390.vpklsfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  %cmp = icmp ne i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <8 x i16> %res
}


define <4 x i32> @test_vpklsgs(<2 x i64> %a, <2 x i64> %b, i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vpklsgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <4 x i32> @test_vpklsgs_none_store(<2 x i64> %a, <2 x i64> %b,
                                          i32 *%ptr) {





  %call = call {<4 x i32>, i32} @llvm.s390.vpklsgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  %cmp = icmp eq i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <4 x i32> %res
}


define void @test_vstl1(<16 x i8> %vec, i8 *%ptr, i32 %length) {



  call void @llvm.s390.vstl(<16 x i8> %vec, i32 %length, i8 *%ptr)
  ret void
}


define void @test_vstl2(<16 x i8> %vec, i8 *%base, i32 %length) {



  %ptr = getelementptr i8, i8 *%base, i64 4095
  call void @llvm.s390.vstl(<16 x i8> %vec, i32 %length, i8 *%ptr)
  ret void
}


define void @test_vstl3(<16 x i8> %vec, i8 *%base, i32 %length) {



  %ptr = getelementptr i8, i8 *%base, i64 4096
  call void @llvm.s390.vstl(<16 x i8> %vec, i32 %length, i8 *%ptr)
  ret void
}


define void @test_vstl4(<16 x i8> %vec, i8 *%base, i64 %index, i32 %length) {



  %ptr = getelementptr i8, i8 *%base, i64 %index
  call void @llvm.s390.vstl(<16 x i8> %vec, i32 %length, i8 *%ptr)
  ret void
}


define <8 x i16> @test_vuphb(<16 x i8> %a) {



  %res = call <8 x i16> @llvm.s390.vuphb(<16 x i8> %a)
  ret <8 x i16> %res
}


define <4 x i32> @test_vuphh(<8 x i16> %a) {



  %res = call <4 x i32> @llvm.s390.vuphh(<8 x i16> %a)
  ret <4 x i32> %res
}


define <2 x i64> @test_vuphf(<4 x i32> %a) {



  %res = call <2 x i64> @llvm.s390.vuphf(<4 x i32> %a)
  ret <2 x i64> %res
}


define <8 x i16> @test_vuplhb(<16 x i8> %a) {



  %res = call <8 x i16> @llvm.s390.vuplhb(<16 x i8> %a)
  ret <8 x i16> %res
}


define <4 x i32> @test_vuplhh(<8 x i16> %a) {



  %res = call <4 x i32> @llvm.s390.vuplhh(<8 x i16> %a)
  ret <4 x i32> %res
}


define <2 x i64> @test_vuplhf(<4 x i32> %a) {



  %res = call <2 x i64> @llvm.s390.vuplhf(<4 x i32> %a)
  ret <2 x i64> %res
}


define <8 x i16> @test_vuplb(<16 x i8> %a) {



  %res = call <8 x i16> @llvm.s390.vuplb(<16 x i8> %a)
  ret <8 x i16> %res
}


define <4 x i32> @test_vuplhw(<8 x i16> %a) {



  %res = call <4 x i32> @llvm.s390.vuplhw(<8 x i16> %a)
  ret <4 x i32> %res
}


define <2 x i64> @test_vuplf(<4 x i32> %a) {



  %res = call <2 x i64> @llvm.s390.vuplf(<4 x i32> %a)
  ret <2 x i64> %res
}


define <8 x i16> @test_vupllb(<16 x i8> %a) {



  %res = call <8 x i16> @llvm.s390.vupllb(<16 x i8> %a)
  ret <8 x i16> %res
}


define <4 x i32> @test_vupllh(<8 x i16> %a) {



  %res = call <4 x i32> @llvm.s390.vupllh(<8 x i16> %a)
  ret <4 x i32> %res
}


define <2 x i64> @test_vupllf(<4 x i32> %a) {



  %res = call <2 x i64> @llvm.s390.vupllf(<4 x i32> %a)
  ret <2 x i64> %res
}


define <16 x i8> @test_vaccb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vaccb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vacch(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vacch(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vaccf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vaccf(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vaccg(<2 x i64> %a, <2 x i64> %b) {



  %res = call <2 x i64> @llvm.s390.vaccg(<2 x i64> %a, <2 x i64> %b)
  ret <2 x i64> %res
}


define <16 x i8> @test_vaq(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vaq(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vacq(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vacq(<16 x i8> %a, <16 x i8> %b,
                                        <16 x i8> %c)
  ret <16 x i8> %res
}


define <16 x i8> @test_vaccq(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vaccq(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vacccq(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vacccq(<16 x i8> %a, <16 x i8> %b,
                                          <16 x i8> %c)
  ret <16 x i8> %res
}


define <16 x i8> @test_vavgb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vavgb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vavgh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vavgh(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vavgf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vavgf(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vavgg(<2 x i64> %a, <2 x i64> %b) {



  %res = call <2 x i64> @llvm.s390.vavgg(<2 x i64> %a, <2 x i64> %b)
  ret <2 x i64> %res
}


define <16 x i8> @test_vavglb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vavglb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vavglh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vavglh(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vavglf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vavglf(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vavglg(<2 x i64> %a, <2 x i64> %b) {



  %res = call <2 x i64> @llvm.s390.vavglg(<2 x i64> %a, <2 x i64> %b)
  ret <2 x i64> %res
}


define <4 x i32> @test_vcksm(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vcksm(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <8 x i16> @test_vgfmb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <8 x i16> @llvm.s390.vgfmb(<16 x i8> %a, <16 x i8> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vgfmh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <4 x i32> @llvm.s390.vgfmh(<8 x i16> %a, <8 x i16> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vgfmf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <2 x i64> @llvm.s390.vgfmf(<4 x i32> %a, <4 x i32> %b)
  ret <2 x i64> %res
}


define <16 x i8> @test_vgfmg(<2 x i64> %a, <2 x i64> %b) {



  %res = call <16 x i8> @llvm.s390.vgfmg(<2 x i64> %a, <2 x i64> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vgfmab(<16 x i8> %a, <16 x i8> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.vgfmab(<16 x i8> %a, <16 x i8> %b,
                                          <8 x i16> %c)
  ret <8 x i16> %res
}


define <4 x i32> @test_vgfmah(<8 x i16> %a, <8 x i16> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.vgfmah(<8 x i16> %a, <8 x i16> %b,
                                          <4 x i32> %c)
  ret <4 x i32> %res
}


define <2 x i64> @test_vgfmaf(<4 x i32> %a, <4 x i32> %b, <2 x i64> %c) {



  %res = call <2 x i64> @llvm.s390.vgfmaf(<4 x i32> %a, <4 x i32> %b,
                                          <2 x i64> %c)
  ret <2 x i64> %res
}


define <16 x i8> @test_vgfmag(<2 x i64> %a, <2 x i64> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vgfmag(<2 x i64> %a, <2 x i64> %b,
                                          <16 x i8> %c)
  ret <16 x i8> %res
}


define <16 x i8> @test_vmahb(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vmahb(<16 x i8> %a, <16 x i8> %b,
                                         <16 x i8> %c)
  ret <16 x i8> %res
}


define <8 x i16> @test_vmahh(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.vmahh(<8 x i16> %a, <8 x i16> %b,
                                         <8 x i16> %c)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmahf(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.vmahf(<4 x i32> %a, <4 x i32> %b,
                                         <4 x i32> %c)
  ret <4 x i32> %res
}


define <16 x i8> @test_vmalhb(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vmalhb(<16 x i8> %a, <16 x i8> %b,
                                          <16 x i8> %c)
  ret <16 x i8> %res
}


define <8 x i16> @test_vmalhh(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.vmalhh(<8 x i16> %a, <8 x i16> %b,
                                          <8 x i16> %c)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmalhf(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.vmalhf(<4 x i32> %a, <4 x i32> %b,
                                          <4 x i32> %c)
  ret <4 x i32> %res
}


define <8 x i16> @test_vmaeb(<16 x i8> %a, <16 x i8> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.vmaeb(<16 x i8> %a, <16 x i8> %b,
                                         <8 x i16> %c)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmaeh(<8 x i16> %a, <8 x i16> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.vmaeh(<8 x i16> %a, <8 x i16> %b,
                                         <4 x i32> %c)
  ret <4 x i32> %res
}


define <2 x i64> @test_vmaef(<4 x i32> %a, <4 x i32> %b, <2 x i64> %c) {



  %res = call <2 x i64> @llvm.s390.vmaef(<4 x i32> %a, <4 x i32> %b,
                                         <2 x i64> %c)
  ret <2 x i64> %res
}


define <8 x i16> @test_vmaleb(<16 x i8> %a, <16 x i8> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.vmaleb(<16 x i8> %a, <16 x i8> %b,
                                          <8 x i16> %c)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmaleh(<8 x i16> %a, <8 x i16> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.vmaleh(<8 x i16> %a, <8 x i16> %b,
                                          <4 x i32> %c)
  ret <4 x i32> %res
}


define <2 x i64> @test_vmalef(<4 x i32> %a, <4 x i32> %b, <2 x i64> %c) {



  %res = call <2 x i64> @llvm.s390.vmalef(<4 x i32> %a, <4 x i32> %b,
                                          <2 x i64> %c)
  ret <2 x i64> %res
}


define <8 x i16> @test_vmaob(<16 x i8> %a, <16 x i8> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.vmaob(<16 x i8> %a, <16 x i8> %b,
                                         <8 x i16> %c)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmaoh(<8 x i16> %a, <8 x i16> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.vmaoh(<8 x i16> %a, <8 x i16> %b,
                                         <4 x i32> %c)
  ret <4 x i32> %res
}


define <2 x i64> @test_vmaof(<4 x i32> %a, <4 x i32> %b, <2 x i64> %c) {



  %res = call <2 x i64> @llvm.s390.vmaof(<4 x i32> %a, <4 x i32> %b,
                                         <2 x i64> %c)
  ret <2 x i64> %res
}


define <8 x i16> @test_vmalob(<16 x i8> %a, <16 x i8> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.vmalob(<16 x i8> %a, <16 x i8> %b,
                                          <8 x i16> %c)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmaloh(<8 x i16> %a, <8 x i16> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.vmaloh(<8 x i16> %a, <8 x i16> %b,
                                          <4 x i32> %c)
  ret <4 x i32> %res
}


define <2 x i64> @test_vmalof(<4 x i32> %a, <4 x i32> %b, <2 x i64> %c) {



  %res = call <2 x i64> @llvm.s390.vmalof(<4 x i32> %a, <4 x i32> %b,
                                          <2 x i64> %c)
  ret <2 x i64> %res
}


define <16 x i8> @test_vmhb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vmhb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vmhh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vmhh(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmhf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vmhf(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <16 x i8> @test_vmlhb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vmlhb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vmlhh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vmlhh(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmlhf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vmlhf(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <8 x i16> @test_vmeb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <8 x i16> @llvm.s390.vmeb(<16 x i8> %a, <16 x i8> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmeh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <4 x i32> @llvm.s390.vmeh(<8 x i16> %a, <8 x i16> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vmef(<4 x i32> %a, <4 x i32> %b) {



  %res = call <2 x i64> @llvm.s390.vmef(<4 x i32> %a, <4 x i32> %b)
  ret <2 x i64> %res
}


define <8 x i16> @test_vmleb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <8 x i16> @llvm.s390.vmleb(<16 x i8> %a, <16 x i8> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmleh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <4 x i32> @llvm.s390.vmleh(<8 x i16> %a, <8 x i16> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vmlef(<4 x i32> %a, <4 x i32> %b) {



  %res = call <2 x i64> @llvm.s390.vmlef(<4 x i32> %a, <4 x i32> %b)
  ret <2 x i64> %res
}


define <8 x i16> @test_vmob(<16 x i8> %a, <16 x i8> %b) {



  %res = call <8 x i16> @llvm.s390.vmob(<16 x i8> %a, <16 x i8> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmoh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <4 x i32> @llvm.s390.vmoh(<8 x i16> %a, <8 x i16> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vmof(<4 x i32> %a, <4 x i32> %b) {



  %res = call <2 x i64> @llvm.s390.vmof(<4 x i32> %a, <4 x i32> %b)
  ret <2 x i64> %res
}


define <8 x i16> @test_vmlob(<16 x i8> %a, <16 x i8> %b) {



  %res = call <8 x i16> @llvm.s390.vmlob(<16 x i8> %a, <16 x i8> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vmloh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <4 x i32> @llvm.s390.vmloh(<8 x i16> %a, <8 x i16> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vmlof(<4 x i32> %a, <4 x i32> %b) {



  %res = call <2 x i64> @llvm.s390.vmlof(<4 x i32> %a, <4 x i32> %b)
  ret <2 x i64> %res
}


define <16 x i8> @test_verllvb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.verllvb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_verllvh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.verllvh(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_verllvf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.verllvf(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_verllvg(<2 x i64> %a, <2 x i64> %b) {



  %res = call <2 x i64> @llvm.s390.verllvg(<2 x i64> %a, <2 x i64> %b)
  ret <2 x i64> %res
}


define <16 x i8> @test_verllb(<16 x i8> %a, i32 %b) {



  %res = call <16 x i8> @llvm.s390.verllb(<16 x i8> %a, i32 %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_verllh(<8 x i16> %a, i32 %b) {



  %res = call <8 x i16> @llvm.s390.verllh(<8 x i16> %a, i32 %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_verllf(<4 x i32> %a, i32 %b) {



  %res = call <4 x i32> @llvm.s390.verllf(<4 x i32> %a, i32 %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_verllg(<2 x i64> %a, i32 %b) {



  %res = call <2 x i64> @llvm.s390.verllg(<2 x i64> %a, i32 %b)
  ret <2 x i64> %res
}


define <16 x i8> @test_verllb_1(<16 x i8> %a) {



  %res = call <16 x i8> @llvm.s390.verllb(<16 x i8> %a, i32 1)
  ret <16 x i8> %res
}


define <16 x i8> @test_verllb_4095(<16 x i8> %a) {



  %res = call <16 x i8> @llvm.s390.verllb(<16 x i8> %a, i32 4095)
  ret <16 x i8> %res
}


define <16 x i8> @test_verllb_4096(<16 x i8> %a) {




  %res = call <16 x i8> @llvm.s390.verllb(<16 x i8> %a, i32 4096)
  ret <16 x i8> %res
}


define <16 x i8> @test_verimb(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.verimb(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c, i32 1)
  ret <16 x i8> %res
}


define <8 x i16> @test_verimh(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.verimh(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c, i32 1)
  ret <8 x i16> %res
}


define <4 x i32> @test_verimf(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.verimf(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c, i32 1)
  ret <4 x i32> %res
}


define <2 x i64> @test_verimg(<2 x i64> %a, <2 x i64> %b, <2 x i64> %c) {



  %res = call <2 x i64> @llvm.s390.verimg(<2 x i64> %a, <2 x i64> %b, <2 x i64> %c, i32 1)
  ret <2 x i64> %res
}


define <16 x i8> @test_verimb_254(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.verimb(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c, i32 254)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsl(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vsl(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vslb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vslb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsra(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vsra(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsrab(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vsrab(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsrl(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vsrl(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsrlb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vsrlb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsldb_1(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vsldb(<16 x i8> %a, <16 x i8> %b, i32 1)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsldb_15(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vsldb(<16 x i8> %a, <16 x i8> %b, i32 15)
  ret <16 x i8> %res
}


define <16 x i8> @test_vscbib(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vscbib(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vscbih(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vscbih(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vscbif(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vscbif(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vscbig(<2 x i64> %a, <2 x i64> %b) {



  %res = call <2 x i64> @llvm.s390.vscbig(<2 x i64> %a, <2 x i64> %b)
  ret <2 x i64> %res
}


define <16 x i8> @test_vsq(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vsq(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsbiq(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vsbiq(<16 x i8> %a, <16 x i8> %b,
                                         <16 x i8> %c)
  ret <16 x i8> %res
}


define <16 x i8> @test_vscbiq(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vscbiq(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsbcbiq(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vsbcbiq(<16 x i8> %a, <16 x i8> %b,
                                           <16 x i8> %c)
  ret <16 x i8> %res
}


define <4 x i32> @test_vsumb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <4 x i32> @llvm.s390.vsumb(<16 x i8> %a, <16 x i8> %b)
  ret <4 x i32> %res
}


define <4 x i32> @test_vsumh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <4 x i32> @llvm.s390.vsumh(<8 x i16> %a, <8 x i16> %b)
  ret <4 x i32> %res
}


define <2 x i64> @test_vsumgh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <2 x i64> @llvm.s390.vsumgh(<8 x i16> %a, <8 x i16> %b)
  ret <2 x i64> %res
}


define <2 x i64> @test_vsumgf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <2 x i64> @llvm.s390.vsumgf(<4 x i32> %a, <4 x i32> %b)
  ret <2 x i64> %res
}


define <16 x i8> @test_vsumqf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <16 x i8> @llvm.s390.vsumqf(<4 x i32> %a, <4 x i32> %b)
  ret <16 x i8> %res
}


define <16 x i8> @test_vsumqg(<2 x i64> %a, <2 x i64> %b) {



  %res = call <16 x i8> @llvm.s390.vsumqg(<2 x i64> %a, <2 x i64> %b)
  ret <16 x i8> %res
}


define i32 @test_vtm(<16 x i8> %a, <16 x i8> %b) {





  %res = call i32 @llvm.s390.vtm(<16 x i8> %a, <16 x i8> %b)
  ret i32 %res
}


define void @test_vtm_all_store(<16 x i8> %a, <16 x i8> %b, i32 *%ptr) {






  %res = call i32 @llvm.s390.vtm(<16 x i8> %a, <16 x i8> %b)
  %cmp = icmp sge i32 %res, 3
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret void
}


define i32 @test_vceqbs(<16 x i8> %a, <16 x i8> %b) {





  %call = call {<16 x i8>, i32} @llvm.s390.vceqbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vceqbs_any_bool(<16 x i8> %a, <16 x i8> %b) {






  %call = call {<16 x i8>, i32} @llvm.s390.vceqbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 1
  %cmp = icmp ne i32 %res, 3
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <16 x i8> @test_vceqbs_any_store(<16 x i8> %a, <16 x i8> %b, i32 *%ptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vceqbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  %cmp = icmp ule i32 %cc, 2
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <16 x i8> %res
}


define i32 @test_vceqhs(<8 x i16> %a, <8 x i16> %b) {





  %call = call {<8 x i16>, i32} @llvm.s390.vceqhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vceqhs_notall_bool(<8 x i16> %a, <8 x i16> %b) {





  %call = call {<8 x i16>, i32} @llvm.s390.vceqhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 1
  %cmp = icmp sge i32 %res, 1
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <8 x i16> @test_vceqhs_notall_store(<8 x i16> %a, <8 x i16> %b,
                                           i32 *%ptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vceqhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  %cmp = icmp ugt i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <8 x i16> %res
}


define i32 @test_vceqfs(<4 x i32> %a, <4 x i32> %b) {





  %call = call {<4 x i32>, i32} @llvm.s390.vceqfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vceqfs_none_bool(<4 x i32> %a, <4 x i32> %b) {





  %call = call {<4 x i32>, i32} @llvm.s390.vceqfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 1
  %cmp = icmp eq i32 %res, 3
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <4 x i32> @test_vceqfs_none_store(<4 x i32> %a, <4 x i32> %b,
                                         i32 *%ptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vceqfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  %cmp = icmp uge i32 %cc, 3
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <4 x i32> %res
}


define i32 @test_vceqgs(<2 x i64> %a, <2 x i64> %b) {





  %call = call {<2 x i64>, i32} @llvm.s390.vceqgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vceqgs_all_bool(<2 x i64> %a, <2 x i64> %b) {






  %call = call {<2 x i64>, i32} @llvm.s390.vceqgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp ult i32 %res, 1
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <2 x i64> @test_vceqgs_all_store(<2 x i64> %a, <2 x i64> %b, i32 *%ptr) {






  %call = call {<2 x i64>, i32} @llvm.s390.vceqgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 0
  %cc = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp sle i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <2 x i64> %res
}


define i32 @test_vchbs(<16 x i8> %a, <16 x i8> %b) {





  %call = call {<16 x i8>, i32} @llvm.s390.vchbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vchbs_any_bool(<16 x i8> %a, <16 x i8> %b) {






  %call = call {<16 x i8>, i32} @llvm.s390.vchbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 1
  %cmp = icmp ne i32 %res, 3
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <16 x i8> @test_vchbs_any_store(<16 x i8> %a, <16 x i8> %b, i32 *%ptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vchbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  %cmp = icmp ule i32 %cc, 2
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <16 x i8> %res
}


define i32 @test_vchhs(<8 x i16> %a, <8 x i16> %b) {





  %call = call {<8 x i16>, i32} @llvm.s390.vchhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vchhs_notall_bool(<8 x i16> %a, <8 x i16> %b) {





  %call = call {<8 x i16>, i32} @llvm.s390.vchhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 1
  %cmp = icmp sge i32 %res, 1
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <8 x i16> @test_vchhs_notall_store(<8 x i16> %a, <8 x i16> %b,
                                          i32 *%ptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vchhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  %cmp = icmp ugt i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <8 x i16> %res
}


define i32 @test_vchfs(<4 x i32> %a, <4 x i32> %b) {





  %call = call {<4 x i32>, i32} @llvm.s390.vchfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vchfs_none_bool(<4 x i32> %a, <4 x i32> %b) {





  %call = call {<4 x i32>, i32} @llvm.s390.vchfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 1
  %cmp = icmp eq i32 %res, 3
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <4 x i32> @test_vchfs_none_store(<4 x i32> %a, <4 x i32> %b, i32 *%ptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vchfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  %cmp = icmp uge i32 %cc, 3
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <4 x i32> %res
}


define i32 @test_vchgs(<2 x i64> %a, <2 x i64> %b) {





  %call = call {<2 x i64>, i32} @llvm.s390.vchgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vchgs_all_bool(<2 x i64> %a, <2 x i64> %b) {






  %call = call {<2 x i64>, i32} @llvm.s390.vchgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp ult i32 %res, 1
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <2 x i64> @test_vchgs_all_store(<2 x i64> %a, <2 x i64> %b, i32 *%ptr) {






  %call = call {<2 x i64>, i32} @llvm.s390.vchgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 0
  %cc = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp sle i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <2 x i64> %res
}


define i32 @test_vchlbs(<16 x i8> %a, <16 x i8> %b) {





  %call = call {<16 x i8>, i32} @llvm.s390.vchlbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vchlbs_any_bool(<16 x i8> %a, <16 x i8> %b) {






  %call = call {<16 x i8>, i32} @llvm.s390.vchlbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 1
  %cmp = icmp ne i32 %res, 3
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <16 x i8> @test_vchlbs_any_store(<16 x i8> %a, <16 x i8> %b, i32 *%ptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vchlbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  %cmp = icmp sle i32 %cc, 2
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <16 x i8> %res
}


define i32 @test_vchlhs(<8 x i16> %a, <8 x i16> %b) {





  %call = call {<8 x i16>, i32} @llvm.s390.vchlhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vchlhs_notall_bool(<8 x i16> %a, <8 x i16> %b) {





  %call = call {<8 x i16>, i32} @llvm.s390.vchlhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 1
  %cmp = icmp uge i32 %res, 1
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <8 x i16> @test_vchlhs_notall_store(<8 x i16> %a, <8 x i16> %b,
                                           i32 *%ptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vchlhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  %cmp = icmp sgt i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <8 x i16> %res
}


define i32 @test_vchlfs(<4 x i32> %a, <4 x i32> %b) {





  %call = call {<4 x i32>, i32} @llvm.s390.vchlfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vchlfs_none_bool(<4 x i32> %a, <4 x i32> %b) {





  %call = call {<4 x i32>, i32} @llvm.s390.vchlfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 1
  %cmp = icmp eq i32 %res, 3
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <4 x i32> @test_vchlfs_none_store(<4 x i32> %a, <4 x i32> %b,
                                         i32 *%ptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vchlfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  %cmp = icmp sge i32 %cc, 3
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <4 x i32> %res
}


define i32 @test_vchlgs(<2 x i64> %a, <2 x i64> %b) {





  %call = call {<2 x i64>, i32} @llvm.s390.vchlgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vchlgs_all_bool(<2 x i64> %a, <2 x i64> %b) {






  %call = call {<2 x i64>, i32} @llvm.s390.vchlgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp slt i32 %res, 1
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <2 x i64> @test_vchlgs_all_store(<2 x i64> %a, <2 x i64> %b, i32 *%ptr) {






  %call = call {<2 x i64>, i32} @llvm.s390.vchlgs(<2 x i64> %a, <2 x i64> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 0
  %cc = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp ule i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <2 x i64> %res
}


define <16 x i8> @test_vfaeb_0(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaeb(<16 x i8> %a, <16 x i8> %b, i32 0)
  ret <16 x i8> %res
}


define <16 x i8> @test_vfaeb_4(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaeb(<16 x i8> %a, <16 x i8> %b, i32 4)
  ret <16 x i8> %res
}


define <16 x i8> @test_vfaeb_8(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaeb(<16 x i8> %a, <16 x i8> %b, i32 8)
  ret <16 x i8> %res
}


define <16 x i8> @test_vfaeb_12(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaeb(<16 x i8> %a, <16 x i8> %b, i32 12)
  ret <16 x i8> %res
}


define <16 x i8> @test_vfaeb_1(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaeb(<16 x i8> %a, <16 x i8> %b, i32 1)
  ret <16 x i8> %res
}


define <8 x i16> @test_vfaeh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vfaeh(<8 x i16> %a, <8 x i16> %b, i32 4)
  ret <8 x i16> %res
}


define <4 x i32> @test_vfaef(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vfaef(<4 x i32> %a, <4 x i32> %b, i32 8)
  ret <4 x i32> %res
}


define <16 x i8> @test_vfaebs(<16 x i8> %a, <16 x i8> %b, i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vfaebs(<16 x i8> %a, <16 x i8> %b,
                                                  i32 0)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <8 x i16> @test_vfaehs(<8 x i16> %a, <8 x i16> %b, i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vfaehs(<8 x i16> %a, <8 x i16> %b,
                                                  i32 4)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <4 x i32> @test_vfaefs(<4 x i32> %a, <4 x i32> %b, i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vfaefs(<4 x i32> %a, <4 x i32> %b,
                                                  i32 8)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <16 x i8> @test_vfaezb_0(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaezb(<16 x i8> %a, <16 x i8> %b, i32 0)
  ret <16 x i8> %res
}


define <16 x i8> @test_vfaezb_4(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaezb(<16 x i8> %a, <16 x i8> %b, i32 4)
  ret <16 x i8> %res
}


define <16 x i8> @test_vfaezb_8(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaezb(<16 x i8> %a, <16 x i8> %b, i32 8)
  ret <16 x i8> %res
}


define <16 x i8> @test_vfaezb_12(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaezb(<16 x i8> %a, <16 x i8> %b, i32 12)
  ret <16 x i8> %res
}


define <16 x i8> @test_vfaezb_1(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfaezb(<16 x i8> %a, <16 x i8> %b, i32 1)
  ret <16 x i8> %res
}


define <8 x i16> @test_vfaezh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vfaezh(<8 x i16> %a, <8 x i16> %b, i32 4)
  ret <8 x i16> %res
}


define <4 x i32> @test_vfaezf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vfaezf(<4 x i32> %a, <4 x i32> %b, i32 8)
  ret <4 x i32> %res
}


define <16 x i8> @test_vfaezbs(<16 x i8> %a, <16 x i8> %b, i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vfaezbs(<16 x i8> %a, <16 x i8> %b,
                                                   i32 0)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <8 x i16> @test_vfaezhs(<8 x i16> %a, <8 x i16> %b, i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vfaezhs(<8 x i16> %a, <8 x i16> %b,
                                                   i32 4)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <4 x i32> @test_vfaezfs(<4 x i32> %a, <4 x i32> %b, i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vfaezfs(<4 x i32> %a, <4 x i32> %b,
                                                   i32 8)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <16 x i8> @test_vfeeb_0(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfeeb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vfeeh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vfeeh(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vfeef(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vfeef(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <16 x i8> @test_vfeebs(<16 x i8> %a, <16 x i8> %b, i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vfeebs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <8 x i16> @test_vfeehs(<8 x i16> %a, <8 x i16> %b, i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vfeehs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <4 x i32> @test_vfeefs(<4 x i32> %a, <4 x i32> %b, i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vfeefs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <16 x i8> @test_vfeezb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfeezb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vfeezh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vfeezh(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vfeezf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vfeezf(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <16 x i8> @test_vfeezbs(<16 x i8> %a, <16 x i8> %b, i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vfeezbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <8 x i16> @test_vfeezhs(<8 x i16> %a, <8 x i16> %b, i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vfeezhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <4 x i32> @test_vfeezfs(<4 x i32> %a, <4 x i32> %b, i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vfeezfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <16 x i8> @test_vfeneb_0(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfeneb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vfeneh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vfeneh(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vfenef(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vfenef(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <16 x i8> @test_vfenebs(<16 x i8> %a, <16 x i8> %b, i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vfenebs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <8 x i16> @test_vfenehs(<8 x i16> %a, <8 x i16> %b, i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vfenehs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <4 x i32> @test_vfenefs(<4 x i32> %a, <4 x i32> %b, i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vfenefs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <16 x i8> @test_vfenezb(<16 x i8> %a, <16 x i8> %b) {



  %res = call <16 x i8> @llvm.s390.vfenezb(<16 x i8> %a, <16 x i8> %b)
  ret <16 x i8> %res
}


define <8 x i16> @test_vfenezh(<8 x i16> %a, <8 x i16> %b) {



  %res = call <8 x i16> @llvm.s390.vfenezh(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %res
}


define <4 x i32> @test_vfenezf(<4 x i32> %a, <4 x i32> %b) {



  %res = call <4 x i32> @llvm.s390.vfenezf(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %res
}


define <16 x i8> @test_vfenezbs(<16 x i8> %a, <16 x i8> %b, i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vfenezbs(<16 x i8> %a, <16 x i8> %b)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <8 x i16> @test_vfenezhs(<8 x i16> %a, <8 x i16> %b, i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vfenezhs(<8 x i16> %a, <8 x i16> %b)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <4 x i32> @test_vfenezfs(<4 x i32> %a, <4 x i32> %b, i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vfenezfs(<4 x i32> %a, <4 x i32> %b)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <16 x i8> @test_vistrb(<16 x i8> %a) {



  %res = call <16 x i8> @llvm.s390.vistrb(<16 x i8> %a)
  ret <16 x i8> %res
}


define <8 x i16> @test_vistrh(<8 x i16> %a) {



  %res = call <8 x i16> @llvm.s390.vistrh(<8 x i16> %a)
  ret <8 x i16> %res
}


define <4 x i32> @test_vistrf(<4 x i32> %a) {



  %res = call <4 x i32> @llvm.s390.vistrf(<4 x i32> %a)
  ret <4 x i32> %res
}


define <16 x i8> @test_vistrbs(<16 x i8> %a, i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vistrbs(<16 x i8> %a)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <8 x i16> @test_vistrhs(<8 x i16> %a, i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vistrhs(<8 x i16> %a)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <4 x i32> @test_vistrfs(<4 x i32> %a, i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vistrfs(<4 x i32> %a)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <16 x i8> @test_vstrcb_0(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrcb(<16 x i8> %a, <16 x i8> %b,
                                          <16 x i8> %c, i32 0)
  ret <16 x i8> %res
}


define <16 x i8> @test_vstrcb_4(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrcb(<16 x i8> %a, <16 x i8> %b,
                                          <16 x i8> %c, i32 4)
  ret <16 x i8> %res
}


define <16 x i8> @test_vstrcb_8(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrcb(<16 x i8> %a, <16 x i8> %b,
                                          <16 x i8> %c, i32 8)
  ret <16 x i8> %res
}


define <16 x i8> @test_vstrcb_12(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrcb(<16 x i8> %a, <16 x i8> %b,
                                          <16 x i8> %c, i32 12)
  ret <16 x i8> %res
}


define <16 x i8> @test_vstrcb_1(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrcb(<16 x i8> %a, <16 x i8> %b,
                                          <16 x i8> %c, i32 1)
  ret <16 x i8> %res
}


define <8 x i16> @test_vstrch(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.vstrch(<8 x i16> %a, <8 x i16> %b,
                                          <8 x i16> %c, i32 4)
  ret <8 x i16> %res
}


define <4 x i32> @test_vstrcf(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.vstrcf(<4 x i32> %a, <4 x i32> %b,
                                          <4 x i32> %c, i32 8)
  ret <4 x i32> %res
}


define <16 x i8> @test_vstrcbs(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c,
                               i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vstrcbs(<16 x i8> %a, <16 x i8> %b,
                                                   <16 x i8> %c, i32 0)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <8 x i16> @test_vstrchs(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c,
                               i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vstrchs(<8 x i16> %a, <8 x i16> %b,
                                                   <8 x i16> %c, i32 4)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <4 x i32> @test_vstrcfs(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c,
                               i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vstrcfs(<4 x i32> %a, <4 x i32> %b,
                                                   <4 x i32> %c, i32 8)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define <16 x i8> @test_vstrczb_0(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrczb(<16 x i8> %a, <16 x i8> %b,
                                           <16 x i8> %c, i32 0)
  ret <16 x i8> %res
}


define <16 x i8> @test_vstrczb_4(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrczb(<16 x i8> %a, <16 x i8> %b,
                                           <16 x i8> %c, i32 4)
  ret <16 x i8> %res
}


define <16 x i8> @test_vstrczb_8(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrczb(<16 x i8> %a, <16 x i8> %b,
                                           <16 x i8> %c, i32 8)
  ret <16 x i8> %res
}


define <16 x i8> @test_vstrczb_12(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrczb(<16 x i8> %a, <16 x i8> %b,
                                           <16 x i8> %c, i32 12)
  ret <16 x i8> %res
}


define <16 x i8> @test_vstrczb_1(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) {



  %res = call <16 x i8> @llvm.s390.vstrczb(<16 x i8> %a, <16 x i8> %b,
                                           <16 x i8> %c, i32 1)
  ret <16 x i8> %res
}


define <8 x i16> @test_vstrczh(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) {



  %res = call <8 x i16> @llvm.s390.vstrczh(<8 x i16> %a, <8 x i16> %b,
                                           <8 x i16> %c,  i32 4)
  ret <8 x i16> %res
}


define <4 x i32> @test_vstrczf(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) {



  %res = call <4 x i32> @llvm.s390.vstrczf(<4 x i32> %a, <4 x i32> %b,
                                           <4 x i32> %c, i32 8)
  ret <4 x i32> %res
}


define <16 x i8> @test_vstrczbs(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c,
                                i32 *%ccptr) {






  %call = call {<16 x i8>, i32} @llvm.s390.vstrczbs(<16 x i8> %a, <16 x i8> %b,
                                                    <16 x i8> %c, i32 0)
  %res = extractvalue {<16 x i8>, i32} %call, 0
  %cc = extractvalue {<16 x i8>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <16 x i8> %res
}


define <8 x i16> @test_vstrczhs(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c,
                                i32 *%ccptr) {






  %call = call {<8 x i16>, i32} @llvm.s390.vstrczhs(<8 x i16> %a, <8 x i16> %b,
                                                    <8 x i16> %c, i32 4)
  %res = extractvalue {<8 x i16>, i32} %call, 0
  %cc = extractvalue {<8 x i16>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <8 x i16> %res
}


define <4 x i32> @test_vstrczfs(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c,
                                i32 *%ccptr) {






  %call = call {<4 x i32>, i32} @llvm.s390.vstrczfs(<4 x i32> %a, <4 x i32> %b,
                                                    <4 x i32> %c, i32 8)
  %res = extractvalue {<4 x i32>, i32} %call, 0
  %cc = extractvalue {<4 x i32>, i32} %call, 1
  store i32 %cc, i32 *%ccptr
  ret <4 x i32> %res
}


define i32 @test_vfcedbs(<2 x double> %a, <2 x double> %b) {





  %call = call {<2 x i64>, i32} @llvm.s390.vfcedbs(<2 x double> %a,
                                                   <2 x double> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vfcedbs_any_bool(<2 x double> %a, <2 x double> %b) {






  %call = call {<2 x i64>, i32} @llvm.s390.vfcedbs(<2 x double> %a,
                                                   <2 x double> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp ne i32 %res, 3
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <2 x i64> @test_vfcedbs_any_store(<2 x double> %a, <2 x double> %b,
                                         i32 *%ptr) {






  %call = call {<2 x i64>, i32} @llvm.s390.vfcedbs(<2 x double> %a,
                                                   <2 x double> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 0
  %cc = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp ule i32 %cc, 2
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <2 x i64> %res
}


define i32 @test_vfchdbs(<2 x double> %a, <2 x double> %b) {





  %call = call {<2 x i64>, i32} @llvm.s390.vfchdbs(<2 x double> %a,
                                                   <2 x double> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vfchdbs_notall_bool(<2 x double> %a, <2 x double> %b) {





  %call = call {<2 x i64>, i32} @llvm.s390.vfchdbs(<2 x double> %a,
                                                   <2 x double> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp sge i32 %res, 1
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <2 x i64> @test_vfchdbs_notall_store(<2 x double> %a, <2 x double> %b,
                                            i32 *%ptr) {






  %call = call {<2 x i64>, i32} @llvm.s390.vfchdbs(<2 x double> %a,
                                                   <2 x double> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 0
  %cc = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp ugt i32 %cc, 0
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <2 x i64> %res
}


define i32 @test_vfchedbs(<2 x double> %a, <2 x double> %b) {





  %call = call {<2 x i64>, i32} @llvm.s390.vfchedbs(<2 x double> %a,
						    <2 x double> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  ret i32 %res
}


define i32 @test_vfchedbs_none_bool(<2 x double> %a, <2 x double> %b) {





  %call = call {<2 x i64>, i32} @llvm.s390.vfchedbs(<2 x double> %a,
						    <2 x double> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp eq i32 %res, 3
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <2 x i64> @test_vfchedbs_none_store(<2 x double> %a, <2 x double> %b,
                                           i32 *%ptr) {






  %call = call {<2 x i64>, i32} @llvm.s390.vfchedbs(<2 x double> %a,
						    <2 x double> %b)
  %res = extractvalue {<2 x i64>, i32} %call, 0
  %cc = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp uge i32 %cc, 3
  br i1 %cmp, label %store, label %exit

store:
  store i32 0, i32 *%ptr
  br label %exit

exit:
  ret <2 x i64> %res
}


define i32 @test_vftcidb(<2 x double> %a) {





  %call = call {<2 x i64>, i32} @llvm.s390.vftcidb(<2 x double> %a, i32 1)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  ret i32 %res
}



define i32 @test_vftcidb_all_bool(<2 x double> %a) {





  %call = call {<2 x i64>, i32} @llvm.s390.vftcidb(<2 x double> %a, i32 4094)
  %res = extractvalue {<2 x i64>, i32} %call, 1
  %cmp = icmp eq i32 %res, 0
  %ext = zext i1 %cmp to i32
  ret i32 %ext
}


define <2 x double> @test_vfidb_0_4(<2 x double> %a) {



  %res = call <2 x double> @llvm.s390.vfidb(<2 x double> %a, i32 0, i32 4)
  ret <2 x double> %res
}


define <2 x double> @test_vfidb_4_0(<2 x double> %a) {



  %res = call <2 x double> @llvm.s390.vfidb(<2 x double> %a, i32 4, i32 0)
  ret <2 x double> %res
}

