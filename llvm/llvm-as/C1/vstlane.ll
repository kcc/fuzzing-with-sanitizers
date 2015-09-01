

define void @vst1lanei8(i8* %A, <8 x i8>* %B) nounwind {



	%tmp1 = load <8 x i8>, <8 x i8>* %B
        %tmp2 = extractelement <8 x i8> %tmp1, i32 3
        store i8 %tmp2, i8* %A, align 8
	ret void
}


define void @vst1lanei8_update(i8** %ptr, <8 x i8>* %B) nounwind {


	%A = load i8*, i8** %ptr
	%tmp1 = load <8 x i8>, <8 x i8>* %B
	%tmp2 = extractelement <8 x i8> %tmp1, i32 3
	store i8 %tmp2, i8* %A, align 8
	%tmp3 = getelementptr i8, i8* %A, i32 1
	store i8* %tmp3, i8** %ptr
	ret void
}

define void @vst1lanei16(i16* %A, <4 x i16>* %B) nounwind {



	%tmp1 = load <4 x i16>, <4 x i16>* %B
        %tmp2 = extractelement <4 x i16> %tmp1, i32 2
        store i16 %tmp2, i16* %A, align 8
	ret void
}

define void @vst1lanei32(i32* %A, <2 x i32>* %B) nounwind {



	%tmp1 = load <2 x i32>, <2 x i32>* %B
        %tmp2 = extractelement <2 x i32> %tmp1, i32 1
        store i32 %tmp2, i32* %A, align 8
	ret void
}

define void @vst1lanef(float* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %B
        %tmp2 = extractelement <2 x float> %tmp1, i32 1
        store float %tmp2, float* %A
	ret void
}

define void @vst1laneQi8(i8* %A, <16 x i8>* %B) nounwind {



	%tmp1 = load <16 x i8>, <16 x i8>* %B
        %tmp2 = extractelement <16 x i8> %tmp1, i32 9
        store i8 %tmp2, i8* %A, align 8
	ret void
}

define void @vst1laneQi16(i16* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %B
        %tmp2 = extractelement <8 x i16> %tmp1, i32 5
        store i16 %tmp2, i16* %A, align 8
	ret void
}

define void @vst1laneQi32(i32* %A, <4 x i32>* %B) nounwind {



	%tmp1 = load <4 x i32>, <4 x i32>* %B
        %tmp2 = extractelement <4 x i32> %tmp1, i32 3
        store i32 %tmp2, i32* %A, align 8
	ret void
}


define void @vst1laneQi32_update(i32** %ptr, <4 x i32>* %B) nounwind {



	%A = load i32*, i32** %ptr
	%tmp1 = load <4 x i32>, <4 x i32>* %B
	%tmp2 = extractelement <4 x i32> %tmp1, i32 3
	store i32 %tmp2, i32* %A, align 8
	%tmp3 = getelementptr i32, i32* %A, i32 1
	store i32* %tmp3, i32** %ptr
	ret void
}

define void @vst1laneQf(float* %A, <4 x float>* %B) nounwind {



	%tmp1 = load <4 x float>, <4 x float>* %B
        %tmp2 = extractelement <4 x float> %tmp1, i32 3
        store float %tmp2, float* %A
	ret void
}

define void @vst2lanei8(i8* %A, <8 x i8>* %B) nounwind {



	%tmp1 = load <8 x i8>, <8 x i8>* %B
	call void @llvm.arm.neon.vst2lane.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 1, i32 4)
	ret void
}

define void @vst2lanei16(i16* %A, <4 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <4 x i16>, <4 x i16>* %B
	call void @llvm.arm.neon.vst2lane.v4i16(i8* %tmp0, <4 x i16> %tmp1, <4 x i16> %tmp1, i32 1, i32 8)
	ret void
}


define void @vst2lanei16_update(i16** %ptr, <4 x i16>* %B, i32 %inc) nounwind {


	%A = load i16*, i16** %ptr
	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <4 x i16>, <4 x i16>* %B
	call void @llvm.arm.neon.vst2lane.v4i16(i8* %tmp0, <4 x i16> %tmp1, <4 x i16> %tmp1, i32 1, i32 2)
	%tmp2 = getelementptr i16, i16* %A, i32 %inc
	store i16* %tmp2, i16** %ptr
	ret void
}

define void @vst2lanei32(i32* %A, <2 x i32>* %B) nounwind {


	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <2 x i32>, <2 x i32>* %B
	call void @llvm.arm.neon.vst2lane.v2i32(i8* %tmp0, <2 x i32> %tmp1, <2 x i32> %tmp1, i32 1, i32 1)
	ret void
}

define void @vst2lanef(float* %A, <2 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <2 x float>, <2 x float>* %B
	call void @llvm.arm.neon.vst2lane.v2f32(i8* %tmp0, <2 x float> %tmp1, <2 x float> %tmp1, i32 1, i32 1)
	ret void
}

define void @vst2laneQi16(i16* %A, <8 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <8 x i16>, <8 x i16>* %B
	call void @llvm.arm.neon.vst2lane.v8i16(i8* %tmp0, <8 x i16> %tmp1, <8 x i16> %tmp1, i32 5, i32 1)
	ret void
}

define void @vst2laneQi32(i32* %A, <4 x i32>* %B) nounwind {



	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <4 x i32>, <4 x i32>* %B
	call void @llvm.arm.neon.vst2lane.v4i32(i8* %tmp0, <4 x i32> %tmp1, <4 x i32> %tmp1, i32 2, i32 16)
	ret void
}

define void @vst2laneQf(float* %A, <4 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <4 x float>, <4 x float>* %B
	call void @llvm.arm.neon.vst2lane.v4f32(i8* %tmp0, <4 x float> %tmp1, <4 x float> %tmp1, i32 3, i32 1)
	ret void
}

declare void @llvm.arm.neon.vst2lane.v8i8(i8*, <8 x i8>, <8 x i8>, i32, i32) nounwind
declare void @llvm.arm.neon.vst2lane.v4i16(i8*, <4 x i16>, <4 x i16>, i32, i32) nounwind
declare void @llvm.arm.neon.vst2lane.v2i32(i8*, <2 x i32>, <2 x i32>, i32, i32) nounwind
declare void @llvm.arm.neon.vst2lane.v2f32(i8*, <2 x float>, <2 x float>, i32, i32) nounwind

declare void @llvm.arm.neon.vst2lane.v8i16(i8*, <8 x i16>, <8 x i16>, i32, i32) nounwind
declare void @llvm.arm.neon.vst2lane.v4i32(i8*, <4 x i32>, <4 x i32>, i32, i32) nounwind
declare void @llvm.arm.neon.vst2lane.v4f32(i8*, <4 x float>, <4 x float>, i32, i32) nounwind

define void @vst3lanei8(i8* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %B
	call void @llvm.arm.neon.vst3lane.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 1, i32 1)
	ret void
}

define void @vst3lanei16(i16* %A, <4 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <4 x i16>, <4 x i16>* %B
	call void @llvm.arm.neon.vst3lane.v4i16(i8* %tmp0, <4 x i16> %tmp1, <4 x i16> %tmp1, <4 x i16> %tmp1, i32 1, i32 8)
	ret void
}

define void @vst3lanei32(i32* %A, <2 x i32>* %B) nounwind {


	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <2 x i32>, <2 x i32>* %B
	call void @llvm.arm.neon.vst3lane.v2i32(i8* %tmp0, <2 x i32> %tmp1, <2 x i32> %tmp1, <2 x i32> %tmp1, i32 1, i32 1)
	ret void
}

define void @vst3lanef(float* %A, <2 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <2 x float>, <2 x float>* %B
	call void @llvm.arm.neon.vst3lane.v2f32(i8* %tmp0, <2 x float> %tmp1, <2 x float> %tmp1, <2 x float> %tmp1, i32 1, i32 1)
	ret void
}

define void @vst3laneQi16(i16* %A, <8 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <8 x i16>, <8 x i16>* %B
	call void @llvm.arm.neon.vst3lane.v8i16(i8* %tmp0, <8 x i16> %tmp1, <8 x i16> %tmp1, <8 x i16> %tmp1, i32 6, i32 8)
	ret void
}

define void @vst3laneQi32(i32* %A, <4 x i32>* %B) nounwind {


	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <4 x i32>, <4 x i32>* %B
	call void @llvm.arm.neon.vst3lane.v4i32(i8* %tmp0, <4 x i32> %tmp1, <4 x i32> %tmp1, <4 x i32> %tmp1, i32 0, i32 1)
	ret void
}


define void @vst3laneQi32_update(i32** %ptr, <4 x i32>* %B) nounwind {


	%A = load i32*, i32** %ptr
	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <4 x i32>, <4 x i32>* %B
	call void @llvm.arm.neon.vst3lane.v4i32(i8* %tmp0, <4 x i32> %tmp1, <4 x i32> %tmp1, <4 x i32> %tmp1, i32 0, i32 1)
	%tmp2 = getelementptr i32, i32* %A, i32 3
	store i32* %tmp2, i32** %ptr
	ret void
}

define void @vst3laneQf(float* %A, <4 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <4 x float>, <4 x float>* %B
	call void @llvm.arm.neon.vst3lane.v4f32(i8* %tmp0, <4 x float> %tmp1, <4 x float> %tmp1, <4 x float> %tmp1, i32 1, i32 1)
	ret void
}

declare void @llvm.arm.neon.vst3lane.v8i8(i8*, <8 x i8>, <8 x i8>, <8 x i8>, i32, i32) nounwind
declare void @llvm.arm.neon.vst3lane.v4i16(i8*, <4 x i16>, <4 x i16>, <4 x i16>, i32, i32) nounwind
declare void @llvm.arm.neon.vst3lane.v2i32(i8*, <2 x i32>, <2 x i32>, <2 x i32>, i32, i32) nounwind
declare void @llvm.arm.neon.vst3lane.v2f32(i8*, <2 x float>, <2 x float>, <2 x float>, i32, i32) nounwind

declare void @llvm.arm.neon.vst3lane.v8i16(i8*, <8 x i16>, <8 x i16>, <8 x i16>, i32, i32) nounwind
declare void @llvm.arm.neon.vst3lane.v4i32(i8*, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32) nounwind
declare void @llvm.arm.neon.vst3lane.v4f32(i8*, <4 x float>, <4 x float>, <4 x float>, i32, i32) nounwind


define void @vst4lanei8(i8* %A, <8 x i8>* %B) nounwind {



	%tmp1 = load <8 x i8>, <8 x i8>* %B
	call void @llvm.arm.neon.vst4lane.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 1, i32 8)
	ret void
}


define void @vst4lanei8_update(i8** %ptr, <8 x i8>* %B) nounwind {


	%A = load i8*, i8** %ptr
	%tmp1 = load <8 x i8>, <8 x i8>* %B
	call void @llvm.arm.neon.vst4lane.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 1, i32 8)
	%tmp2 = getelementptr i8, i8* %A, i32 4
	store i8* %tmp2, i8** %ptr
	ret void
}

define void @vst4lanei16(i16* %A, <4 x i16>* %B) nounwind {


	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <4 x i16>, <4 x i16>* %B
	call void @llvm.arm.neon.vst4lane.v4i16(i8* %tmp0, <4 x i16> %tmp1, <4 x i16> %tmp1, <4 x i16> %tmp1, <4 x i16> %tmp1, i32 1, i32 1)
	ret void
}

define void @vst4lanei32(i32* %A, <2 x i32>* %B) nounwind {



	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <2 x i32>, <2 x i32>* %B
	call void @llvm.arm.neon.vst4lane.v2i32(i8* %tmp0, <2 x i32> %tmp1, <2 x i32> %tmp1, <2 x i32> %tmp1, <2 x i32> %tmp1, i32 1, i32 16)
	ret void
}

define void @vst4lanef(float* %A, <2 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <2 x float>, <2 x float>* %B
	call void @llvm.arm.neon.vst4lane.v2f32(i8* %tmp0, <2 x float> %tmp1, <2 x float> %tmp1, <2 x float> %tmp1, <2 x float> %tmp1, i32 1, i32 1)
	ret void
}

define void @vst4laneQi16(i16* %A, <8 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <8 x i16>, <8 x i16>* %B
	call void @llvm.arm.neon.vst4lane.v8i16(i8* %tmp0, <8 x i16> %tmp1, <8 x i16> %tmp1, <8 x i16> %tmp1, <8 x i16> %tmp1, i32 7, i32 16)
	ret void
}

define void @vst4laneQi32(i32* %A, <4 x i32>* %B) nounwind {



	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <4 x i32>, <4 x i32>* %B
	call void @llvm.arm.neon.vst4lane.v4i32(i8* %tmp0, <4 x i32> %tmp1, <4 x i32> %tmp1, <4 x i32> %tmp1, <4 x i32> %tmp1, i32 2, i32 1)
	ret void
}

define void @vst4laneQf(float* %A, <4 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <4 x float>, <4 x float>* %B
	call void @llvm.arm.neon.vst4lane.v4f32(i8* %tmp0, <4 x float> %tmp1, <4 x float> %tmp1, <4 x float> %tmp1, <4 x float> %tmp1, i32 1, i32 1)
	ret void
}


define <8 x i16> @variable_insertelement(<8 x i16> %a, i16 %b, i32 %c) nounwind readnone {

    %r = insertelement <8 x i16> %a, i16 %b, i32 %c
    ret <8 x i16> %r
}

declare void @llvm.arm.neon.vst4lane.v8i8(i8*, <8 x i8>, <8 x i8>, <8 x i8>, <8 x i8>, i32, i32) nounwind
declare void @llvm.arm.neon.vst4lane.v4i16(i8*, <4 x i16>, <4 x i16>, <4 x i16>, <4 x i16>, i32, i32) nounwind
declare void @llvm.arm.neon.vst4lane.v2i32(i8*, <2 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, i32, i32) nounwind
declare void @llvm.arm.neon.vst4lane.v2f32(i8*, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32) nounwind

declare void @llvm.arm.neon.vst4lane.v8i16(i8*, <8 x i16>, <8 x i16>, <8 x i16>, <8 x i16>, i32, i32) nounwind
declare void @llvm.arm.neon.vst4lane.v4i32(i8*, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32) nounwind
declare void @llvm.arm.neon.vst4lane.v4f32(i8*, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32) nounwind
