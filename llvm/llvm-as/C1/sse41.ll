


@g16 = external global i16

define <4 x i32> @pinsrd_1(i32 %s, <4 x i32> %tmp) nounwind {









  %tmp1 = insertelement <4 x i32> %tmp, i32 %s, i32 1
  ret <4 x i32> %tmp1
}

define <16 x i8> @pinsrb_1(i8 %s, <16 x i8> %tmp) nounwind {









  %tmp1 = insertelement <16 x i8> %tmp, i8 %s, i32 1
  ret <16 x i8> %tmp1
}

define <2 x i64> @pmovsxbd_1(i32* %p) nounwind {










entry:
	%0 = load i32, i32* %p, align 4
	%1 = insertelement <4 x i32> undef, i32 %0, i32 0
	%2 = insertelement <4 x i32> %1, i32 0, i32 1
	%3 = insertelement <4 x i32> %2, i32 0, i32 2
	%4 = insertelement <4 x i32> %3, i32 0, i32 3
	%5 = bitcast <4 x i32> %4 to <16 x i8>
	%6 = tail call <4 x i32> @llvm.x86.sse41.pmovsxbd(<16 x i8> %5) nounwind readnone
	%7 = bitcast <4 x i32> %6 to <2 x i64>
	ret <2 x i64> %7
}

define <2 x i64> @pmovsxwd_1(i64* %p) nounwind readonly {










entry:
	%0 = load i64, i64* %p		
	%tmp2 = insertelement <2 x i64> zeroinitializer, i64 %0, i32 0		
	%1 = bitcast <2 x i64> %tmp2 to <8 x i16>		
	%2 = tail call <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16> %1) nounwind readnone		
	%3 = bitcast <4 x i32> %2 to <2 x i64>		
	ret <2 x i64> %3
}

define <2 x i64> @pmovzxbq_1() nounwind {











entry:
	%0 = load i16, i16* @g16, align 2		
	%1 = insertelement <8 x i16> undef, i16 %0, i32 0		
	%2 = bitcast <8 x i16> %1 to <16 x i8>		
	%3 = tail call <2 x i64> @llvm.x86.sse41.pmovzxbq(<16 x i8> %2) nounwind readnone		
	ret <2 x i64> %3
}

declare <4 x i32> @llvm.x86.sse41.pmovsxbd(<16 x i8>) nounwind readnone
declare <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16>) nounwind readnone
declare <2 x i64> @llvm.x86.sse41.pmovzxbq(<16 x i8>) nounwind readnone

define i32 @extractps_1(<4 x float> %v) nounwind {









  %s = extractelement <4 x float> %v, i32 3
  %i = bitcast float %s to i32
  ret i32 %i
}
define i32 @extractps_2(<4 x float> %v) nounwind {









  %t = bitcast <4 x float> %v to <4 x i32>
  %s = extractelement <4 x i32> %t, i32 3
  ret i32 %s
}






define float @ext_1(<4 x float> %v) nounwind {















  %s = extractelement <4 x float> %v, i32 3
  %t = fadd float %s, 1.0
  ret float %t
}
define float @ext_2(<4 x float> %v) nounwind {













  %s = extractelement <4 x float> %v, i32 3
  ret float %s
}
define i32 @ext_3(<4 x i32> %v) nounwind {









  %i = extractelement <4 x i32> %v, i32 3
  ret i32 %i
}

define <4 x float> @insertps_1(<4 x float> %t1, <4 x float> %t2) nounwind {









  %tmp1 = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %t1, <4 x float> %t2, i32 1) nounwind readnone
  ret <4 x float> %tmp1
}

declare <4 x float> @llvm.x86.sse41.insertps(<4 x float>, <4 x float>, i32) nounwind readnone



define <4 x float> @blendps_not_insertps_1(<4 x float> %t1, float %t2) nounwind {










  %tmp1 = insertelement <4 x float> %t1, float %t2, i32 0
  ret <4 x float> %tmp1
}




define <4 x float> @insertps_or_blendps(<4 x float> %t1, float %t2) minsize nounwind {









  %tmp1 = insertelement <4 x float> %t1, float %t2, i32 0
  ret <4 x float> %tmp1
}



define <4 x float> @blendps_not_insertps_2(<4 x float> %t1, <4 x float> %t2) nounwind {









  %tmp2 = extractelement <4 x float> %t2, i32 0
  %tmp1 = insertelement <4 x float> %t1, float %tmp2, i32 0
  ret <4 x float> %tmp1
}

define i32 @ptestz_1(<2 x i64> %t1, <2 x i64> %t2) nounwind {













  %tmp1 = call i32 @llvm.x86.sse41.ptestz(<2 x i64> %t1, <2 x i64> %t2) nounwind readnone
  ret i32 %tmp1
}

define i32 @ptestz_2(<2 x i64> %t1, <2 x i64> %t2) nounwind {













  %tmp1 = call i32 @llvm.x86.sse41.ptestc(<2 x i64> %t1, <2 x i64> %t2) nounwind readnone
  ret i32 %tmp1
}

define i32 @ptestz_3(<2 x i64> %t1, <2 x i64> %t2) nounwind {













  %tmp1 = call i32 @llvm.x86.sse41.ptestnzc(<2 x i64> %t1, <2 x i64> %t2) nounwind readnone
  ret i32 %tmp1
}


declare i32 @llvm.x86.sse41.ptestz(<2 x i64>, <2 x i64>) nounwind readnone
declare i32 @llvm.x86.sse41.ptestc(<2 x i64>, <2 x i64>) nounwind readnone
declare i32 @llvm.x86.sse41.ptestnzc(<2 x i64>, <2 x i64>) nounwind readnone



define <2 x float> @buildvector(<2 x float> %A, <2 x float> %B) nounwind  {

















entry:
  %tmp7 = extractelement <2 x float> %A, i32 0
  %tmp5 = extractelement <2 x float> %A, i32 1
  %tmp3 = extractelement <2 x float> %B, i32 0
  %tmp1 = extractelement <2 x float> %B, i32 1
  %add.r = fadd float %tmp7, %tmp3
  %add.i = fadd float %tmp5, %tmp1
  %tmp11 = insertelement <2 x float> undef, float %add.r, i32 0
  %tmp9 = insertelement <2 x float> %tmp11, float %add.i, i32 1
  ret <2 x float> %tmp9
}

define <4 x float> @insertps_from_shufflevector_1(<4 x float> %a, <4 x float>* nocapture readonly %pb) {










entry:
  %0 = load <4 x float>, <4 x float>* %pb, align 16
  %vecinit6 = shufflevector <4 x float> %a, <4 x float> %0, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  ret <4 x float> %vecinit6
}

define <4 x float> @insertps_from_shufflevector_2(<4 x float> %a, <4 x float> %b) {









entry:
  %vecinit6 = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  ret <4 x float> %vecinit6
}



define <4 x i32> @pinsrd_from_shufflevector_i32(<4 x i32> %a, <4 x i32>* nocapture readonly %pb) {












entry:
  %0 = load <4 x i32>, <4 x i32>* %pb, align 16
  %vecinit6 = shufflevector <4 x i32> %a, <4 x i32> %0, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  ret <4 x i32> %vecinit6
}

define <4 x i32> @insertps_from_shufflevector_i32_2(<4 x i32> %a, <4 x i32> %b) {











entry:
  %vecinit6 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 7, i32 2, i32 3>
  ret <4 x i32> %vecinit6
}

define <4 x float> @insertps_from_load_ins_elt_undef(<4 x float> %a, float* %b) {










  %1 = load float, float* %b, align 4
  %2 = insertelement <4 x float> undef, float %1, i32 0
  %result = shufflevector <4 x float> %a, <4 x float> %2, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  ret <4 x float> %result
}


define <4 x i32> @insertps_from_load_ins_elt_undef_i32(<4 x i32> %a, i32* %b) {














  %1 = load i32, i32* %b, align 4
  %2 = insertelement <4 x i32> undef, i32 %1, i32 0
  %result = shufflevector <4 x i32> %a, <4 x i32> %2, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  ret <4 x i32> %result
}


define <4 x float> @shuf_XYZ0(<4 x float> %x, <4 x float> %a) {











  %vecext = extractelement <4 x float> %x, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecext1 = extractelement <4 x float> %x, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit, float %vecext1, i32 1
  %vecext3 = extractelement <4 x float> %x, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit2, float %vecext3, i32 2
  %vecinit5 = insertelement <4 x float> %vecinit4, float 0.0, i32 3
  ret <4 x float> %vecinit5
}

define <4 x float> @shuf_XY00(<4 x float> %x, <4 x float> %a) {









  %vecext = extractelement <4 x float> %x, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecext1 = extractelement <4 x float> %x, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit, float %vecext1, i32 1
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.0, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit3, float 0.0, i32 3
  ret <4 x float> %vecinit4
}

define <4 x float> @shuf_XYY0(<4 x float> %x, <4 x float> %a) {









  %vecext = extractelement <4 x float> %x, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecext1 = extractelement <4 x float> %x, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit, float %vecext1, i32 1
  %vecinit4 = insertelement <4 x float> %vecinit2, float %vecext1, i32 2
  %vecinit5 = insertelement <4 x float> %vecinit4, float 0.0, i32 3
  ret <4 x float> %vecinit5
}

define <4 x float> @shuf_XYW0(<4 x float> %x, <4 x float> %a) {









  %vecext = extractelement <4 x float> %x, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecext1 = extractelement <4 x float> %x, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit, float %vecext1, i32 1
  %vecext2 = extractelement <4 x float> %x, i32 3
  %vecinit3 = insertelement <4 x float> %vecinit2, float %vecext2, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit3, float 0.0, i32 3
  ret <4 x float> %vecinit4
}

define <4 x float> @shuf_W00W(<4 x float> %x, <4 x float> %a) {









  %vecext = extractelement <4 x float> %x, i32 3
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecinit2 = insertelement <4 x float> %vecinit, float 0.0, i32 1
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.0, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit3, float %vecext, i32 3
  ret <4 x float> %vecinit4
}

define <4 x float> @shuf_X00A(<4 x float> %x, <4 x float> %a) {













  %vecext = extractelement <4 x float> %x, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.0, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit1, float 0.0, i32 2
  %vecinit4 = shufflevector <4 x float> %vecinit2, <4 x float> %a, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  ret <4 x float> %vecinit4
}

define <4 x float> @shuf_X00X(<4 x float> %x, <4 x float> %a) {









  %vecext = extractelement <4 x float> %x, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.0, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit1, float 0.0, i32 2
  %vecinit4 = shufflevector <4 x float> %vecinit2, <4 x float> %x, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  ret <4 x float> %vecinit4
}

define <4 x float> @shuf_X0YC(<4 x float> %x, <4 x float> %a) {











  %vecext = extractelement <4 x float> %x, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.0, i32 1
  %vecinit3 = shufflevector <4 x float> %vecinit1, <4 x float> %x, <4 x i32> <i32 0, i32 1, i32 5, i32 undef>
  %vecinit5 = shufflevector <4 x float> %vecinit3, <4 x float> %a, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  ret <4 x float> %vecinit5
}

define <4 x i32> @i32_shuf_XYZ0(<4 x i32> %x, <4 x i32> %a) {











  %vecext = extractelement <4 x i32> %x, i32 0
  %vecinit = insertelement <4 x i32> undef, i32 %vecext, i32 0
  %vecext1 = extractelement <4 x i32> %x, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit, i32 %vecext1, i32 1
  %vecext3 = extractelement <4 x i32> %x, i32 2
  %vecinit4 = insertelement <4 x i32> %vecinit2, i32 %vecext3, i32 2
  %vecinit5 = insertelement <4 x i32> %vecinit4, i32 0, i32 3
  ret <4 x i32> %vecinit5
}

define <4 x i32> @i32_shuf_XY00(<4 x i32> %x, <4 x i32> %a) {









  %vecext = extractelement <4 x i32> %x, i32 0
  %vecinit = insertelement <4 x i32> undef, i32 %vecext, i32 0
  %vecext1 = extractelement <4 x i32> %x, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit, i32 %vecext1, i32 1
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 0, i32 2
  %vecinit4 = insertelement <4 x i32> %vecinit3, i32 0, i32 3
  ret <4 x i32> %vecinit4
}

define <4 x i32> @i32_shuf_XYY0(<4 x i32> %x, <4 x i32> %a) {













  %vecext = extractelement <4 x i32> %x, i32 0
  %vecinit = insertelement <4 x i32> undef, i32 %vecext, i32 0
  %vecext1 = extractelement <4 x i32> %x, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit, i32 %vecext1, i32 1
  %vecinit4 = insertelement <4 x i32> %vecinit2, i32 %vecext1, i32 2
  %vecinit5 = insertelement <4 x i32> %vecinit4, i32 0, i32 3
  ret <4 x i32> %vecinit5
}

define <4 x i32> @i32_shuf_XYW0(<4 x i32> %x, <4 x i32> %a) {













  %vecext = extractelement <4 x i32> %x, i32 0
  %vecinit = insertelement <4 x i32> undef, i32 %vecext, i32 0
  %vecext1 = extractelement <4 x i32> %x, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit, i32 %vecext1, i32 1
  %vecext2 = extractelement <4 x i32> %x, i32 3
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %vecext2, i32 2
  %vecinit4 = insertelement <4 x i32> %vecinit3, i32 0, i32 3
  ret <4 x i32> %vecinit4
}

define <4 x i32> @i32_shuf_W00W(<4 x i32> %x, <4 x i32> %a) {













  %vecext = extractelement <4 x i32> %x, i32 3
  %vecinit = insertelement <4 x i32> undef, i32 %vecext, i32 0
  %vecinit2 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 0, i32 2
  %vecinit4 = insertelement <4 x i32> %vecinit3, i32 %vecext, i32 3
  ret <4 x i32> %vecinit4
}

define <4 x i32> @i32_shuf_X00A(<4 x i32> %x, <4 x i32> %a) {















  %vecext = extractelement <4 x i32> %x, i32 0
  %vecinit = insertelement <4 x i32> undef, i32 %vecext, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 0, i32 2
  %vecinit4 = shufflevector <4 x i32> %vecinit2, <4 x i32> %a, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  ret <4 x i32> %vecinit4
}

define <4 x i32> @i32_shuf_X00X(<4 x i32> %x, <4 x i32> %a) {













  %vecext = extractelement <4 x i32> %x, i32 0
  %vecinit = insertelement <4 x i32> undef, i32 %vecext, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 0, i32 2
  %vecinit4 = shufflevector <4 x i32> %vecinit2, <4 x i32> %x, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  ret <4 x i32> %vecinit4
}

define <4 x i32> @i32_shuf_X0YC(<4 x i32> %x, <4 x i32> %a) {













  %vecext = extractelement <4 x i32> %x, i32 0
  %vecinit = insertelement <4 x i32> undef, i32 %vecext, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit3 = shufflevector <4 x i32> %vecinit1, <4 x i32> %x, <4 x i32> <i32 0, i32 1, i32 5, i32 undef>
  %vecinit5 = shufflevector <4 x i32> %vecinit3, <4 x i32> %a, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  ret <4 x i32> %vecinit5
}


define < 4 x float> @test_insertps_no_undef(<4 x float> %x) {













  %vecext = extractelement <4 x float> %x, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecext1 = extractelement <4 x float> %x, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit, float %vecext1, i32 1
  %vecext3 = extractelement <4 x float> %x, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit2, float %vecext3, i32 2
  %vecinit5 = insertelement <4 x float> %vecinit4, float 0.0, i32 3
  %mask = fcmp olt <4 x float> %vecinit5, %x
  %res = select  <4 x i1> %mask, <4 x float> %x, <4 x float>%vecinit5
  ret <4 x float> %res
}

define <8 x i16> @blendvb_fallback(<8 x i1> %mask, <8 x i16> %x, <8 x i16> %y) {















  %ret = select <8 x i1> %mask, <8 x i16> %x, <8 x i16> %y
  ret <8 x i16> %ret
}


define <4 x float> @insertps_from_vector_load(<4 x float> %a, <4 x float>* nocapture readonly %pb) {










  %1 = load <4 x float>, <4 x float>* %pb, align 16
  %2 = tail call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %a, <4 x float> %1, i32 48)
  ret <4 x float> %2
}



define <4 x float> @insertps_from_vector_load_offset(<4 x float> %a, <4 x float>* nocapture readonly %pb) {










  %1 = load <4 x float>, <4 x float>* %pb, align 16
  %2 = tail call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %a, <4 x float> %1, i32 96)
  ret <4 x float> %2
}


define <4 x float> @insertps_from_vector_load_offset_2(<4 x float> %a, <4 x float>* nocapture readonly %pb, i64 %index) {













  %1 = getelementptr inbounds <4 x float>, <4 x float>* %pb, i64 %index
  %2 = load <4 x float>, <4 x float>* %1, align 16
  %3 = tail call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %a, <4 x float> %2, i32 192)
  ret <4 x float> %3
}

define <4 x float> @insertps_from_broadcast_loadf32(<4 x float> %a, float* nocapture readonly %fb, i64 %index) {















  %1 = getelementptr inbounds float, float* %fb, i64 %index
  %2 = load float, float* %1, align 4
  %3 = insertelement <4 x float> undef, float %2, i32 0
  %4 = insertelement <4 x float> %3, float %2, i32 1
  %5 = insertelement <4 x float> %4, float %2, i32 2
  %6 = insertelement <4 x float> %5, float %2, i32 3
  %7 = tail call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %a, <4 x float> %6, i32 48)
  ret <4 x float> %7
}

define <4 x float> @insertps_from_broadcast_loadv4f32(<4 x float> %a, <4 x float>* nocapture readonly %b) {














  %1 = load <4 x float>, <4 x float>* %b, align 4
  %2 = extractelement <4 x float> %1, i32 0
  %3 = insertelement <4 x float> undef, float %2, i32 0
  %4 = insertelement <4 x float> %3, float %2, i32 1
  %5 = insertelement <4 x float> %4, float %2, i32 2
  %6 = insertelement <4 x float> %5, float %2, i32 3
  %7 = tail call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %a, <4 x float> %6, i32 48)
  ret <4 x float> %7
}


define <4 x float> @insertps_from_broadcast_multiple_use(<4 x float> %a, <4 x float> %b, <4 x float> %c, <4 x float> %d, float* nocapture readonly %fb, i64 %index) {



























  %1 = getelementptr inbounds float, float* %fb, i64 %index
  %2 = load float, float* %1, align 4
  %3 = insertelement <4 x float> undef, float %2, i32 0
  %4 = insertelement <4 x float> %3, float %2, i32 1
  %5 = insertelement <4 x float> %4, float %2, i32 2
  %6 = insertelement <4 x float> %5, float %2, i32 3
  %7 = tail call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %a, <4 x float> %6, i32 48)
  %8 = tail call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %b, <4 x float> %6, i32 48)
  %9 = tail call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %c, <4 x float> %6, i32 48)
  %10 = tail call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %d, <4 x float> %6, i32 48)
  %11 = fadd <4 x float> %7, %8
  %12 = fadd <4 x float> %9, %10
  %13 = fadd <4 x float> %11, %12
  ret <4 x float> %13
}

define <4 x float> @insertps_with_undefs(<4 x float> %a, float* %b) {














  %1 = load float, float* %b, align 4
  %2 = insertelement <4 x float> undef, float %1, i32 0
  %result = shufflevector <4 x float> %a, <4 x float> %2, <4 x i32> <i32 4, i32 undef, i32 0, i32 7>
  ret <4 x float> %result
}



define <4 x float> @pr20087(<4 x float> %a, <4 x float> *%ptr) {










  %load = load <4 x float> , <4 x float> *%ptr
  %ret = shufflevector <4 x float> %load, <4 x float> %a, <4 x i32> <i32 4, i32 undef, i32 6, i32 2>
  ret <4 x float> %ret
}


define void @insertps_pr20411(<4 x i32> %shuffle109, <4 x i32> %shuffle116, i32* noalias nocapture %RET) #1 {














  %shuffle117 = shufflevector <4 x i32> %shuffle109, <4 x i32> %shuffle116, <4 x i32> <i32 0, i32 7, i32 undef, i32 undef>
  %ptrcast = bitcast i32* %RET to <4 x i32>*
  store <4 x i32> %shuffle117, <4 x i32>* %ptrcast, align 4
  ret void
}

define <4 x float> @insertps_4(<4 x float> %A, <4 x float> %B) {









entry:
  %vecext = extractelement <4 x float> %A, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 1
  %vecext2 = extractelement <4 x float> %B, i32 2
  %vecinit3 = insertelement <4 x float> %vecinit1, float %vecext2, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit3, float 0.000000e+00, i32 3
  ret <4 x float> %vecinit4
}

define <4 x float> @insertps_5(<4 x float> %A, <4 x float> %B) {









entry:
  %vecext = extractelement <4 x float> %A, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecext1 = extractelement <4 x float> %B, i32 1
  %vecinit2 = insertelement <4 x float> %vecinit, float %vecext1, i32 1
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.000000e+00, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit3, float 0.000000e+00, i32 3
  ret <4 x float> %vecinit4
}

define <4 x float> @insertps_6(<4 x float> %A, <4 x float> %B) {









entry:
  %vecext = extractelement <4 x float> %A, i32 1
  %vecinit = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %vecext, i32 1
  %vecext1 = extractelement <4 x float> %B, i32 2
  %vecinit2 = insertelement <4 x float> %vecinit, float %vecext1, i32 2
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.000000e+00, i32 3
  ret <4 x float> %vecinit3
}

define <4 x float> @insertps_7(<4 x float> %A, <4 x float> %B) {









entry:
  %vecext = extractelement <4 x float> %A, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 1
  %vecext2 = extractelement <4 x float> %B, i32 1
  %vecinit3 = insertelement <4 x float> %vecinit1, float %vecext2, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit3, float 0.000000e+00, i32 3
  ret <4 x float> %vecinit4
}

define <4 x float> @insertps_8(<4 x float> %A, <4 x float> %B) {









entry:
  %vecext = extractelement <4 x float> %A, i32 0
  %vecinit = insertelement <4 x float> undef, float %vecext, i32 0
  %vecext1 = extractelement <4 x float> %B, i32 0
  %vecinit2 = insertelement <4 x float> %vecinit, float %vecext1, i32 1
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.000000e+00, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit3, float 0.000000e+00, i32 3
  ret <4 x float> %vecinit4
}

define <4 x float> @insertps_9(<4 x float> %A, <4 x float> %B) {











entry:
  %vecext = extractelement <4 x float> %A, i32 0
  %vecinit = insertelement <4 x float> <float 0.000000e+00, float undef, float undef, float undef>, float %vecext, i32 1
  %vecext1 = extractelement <4 x float> %B, i32 2
  %vecinit2 = insertelement <4 x float> %vecinit, float %vecext1, i32 2
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.000000e+00, i32 3
  ret <4 x float> %vecinit3
}

define <4 x float> @insertps_10(<4 x float> %A)









{
  %vecext = extractelement <4 x float> %A, i32 0
  %vecbuild1 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %vecext, i32 0
  %vecbuild2 = insertelement <4 x float> %vecbuild1, float %vecext, i32 2
  ret <4 x float> %vecbuild2
}

define <4 x float> @build_vector_to_shuffle_1(<4 x float> %A) {











entry:
  %vecext = extractelement <4 x float> %A, i32 1
  %vecinit = insertelement <4 x float> zeroinitializer, float %vecext, i32 1
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.0, i32 2
  %vecinit3 = shufflevector <4 x float> %vecinit1, <4 x float> %A, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  ret <4 x float> %vecinit3
}

define <4 x float> @build_vector_to_shuffle_2(<4 x float> %A) {











entry:
  %vecext = extractelement <4 x float> %A, i32 1
  %vecinit = insertelement <4 x float> zeroinitializer, float %vecext, i32 1
  %vecinit1 = insertelement <4 x float> %vecinit, float 0.0, i32 2
  ret <4 x float> %vecinit1
}
