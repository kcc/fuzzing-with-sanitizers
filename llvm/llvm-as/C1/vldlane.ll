




define <8 x i8> @vld1lanei8(i8* %A, <8 x i8>* %B) nounwind {



	%tmp1 = load <8 x i8>, <8 x i8>* %B
	%tmp2 = load i8, i8* %A, align 8
	%tmp3 = insertelement <8 x i8> %tmp1, i8 %tmp2, i32 3
        ret <8 x i8> %tmp3
}

define <4 x i16> @vld1lanei16(i16* %A, <4 x i16>* %B) nounwind {



	%tmp1 = load <4 x i16>, <4 x i16>* %B
	%tmp2 = load i16, i16* %A, align 8
	%tmp3 = insertelement <4 x i16> %tmp1, i16 %tmp2, i32 2
        ret <4 x i16> %tmp3
}

define <2 x i32> @vld1lanei32(i32* %A, <2 x i32>* %B) nounwind {



	%tmp1 = load <2 x i32>, <2 x i32>* %B
	%tmp2 = load i32, i32* %A, align 8
	%tmp3 = insertelement <2 x i32> %tmp1, i32 %tmp2, i32 1
        ret <2 x i32> %tmp3
}

define <2 x i32> @vld1lanei32a32(i32* %A, <2 x i32>* %B) nounwind {



	%tmp1 = load <2 x i32>, <2 x i32>* %B
	%tmp2 = load i32, i32* %A, align 4
	%tmp3 = insertelement <2 x i32> %tmp1, i32 %tmp2, i32 1
        ret <2 x i32> %tmp3
}

define <2 x float> @vld1lanef(float* %A, <2 x float>* %B) nounwind {


	%tmp1 = load <2 x float>, <2 x float>* %B
	%tmp2 = load float, float* %A, align 4
	%tmp3 = insertelement <2 x float> %tmp1, float %tmp2, i32 1
	ret <2 x float> %tmp3
}

define <16 x i8> @vld1laneQi8(i8* %A, <16 x i8>* %B) nounwind {


	%tmp1 = load <16 x i8>, <16 x i8>* %B
	%tmp2 = load i8, i8* %A, align 8
	%tmp3 = insertelement <16 x i8> %tmp1, i8 %tmp2, i32 9
	ret <16 x i8> %tmp3
}

define <8 x i16> @vld1laneQi16(i16* %A, <8 x i16>* %B) nounwind {


	%tmp1 = load <8 x i16>, <8 x i16>* %B
	%tmp2 = load i16, i16* %A, align 8
	%tmp3 = insertelement <8 x i16> %tmp1, i16 %tmp2, i32 5
	ret <8 x i16> %tmp3
}

define <4 x i32> @vld1laneQi32(i32* %A, <4 x i32>* %B) nounwind {


	%tmp1 = load <4 x i32>, <4 x i32>* %B
	%tmp2 = load i32, i32* %A, align 8
	%tmp3 = insertelement <4 x i32> %tmp1, i32 %tmp2, i32 3
	ret <4 x i32> %tmp3
}

define <4 x float> @vld1laneQf(float* %A, <4 x float>* %B) nounwind {


	%tmp1 = load <4 x float>, <4 x float>* %B
	%tmp2 = load float, float* %A
	%tmp3 = insertelement <4 x float> %tmp1, float %tmp2, i32 0
	ret <4 x float> %tmp3
}

%struct.__neon_int8x8x2_t = type { <8 x i8>,  <8 x i8> }
%struct.__neon_int16x4x2_t = type { <4 x i16>, <4 x i16> }
%struct.__neon_int32x2x2_t = type { <2 x i32>, <2 x i32> }
%struct.__neon_float32x2x2_t = type { <2 x float>, <2 x float> }

%struct.__neon_int16x8x2_t = type { <8 x i16>, <8 x i16> }
%struct.__neon_int32x4x2_t = type { <4 x i32>, <4 x i32> }
%struct.__neon_float32x4x2_t = type { <4 x float>, <4 x float> }

define <8 x i8> @vld2lanei8(i8* %A, <8 x i8>* %B) nounwind {



	%tmp1 = load <8 x i8>, <8 x i8>* %B
	%tmp2 = call %struct.__neon_int8x8x2_t @llvm.arm.neon.vld2lane.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 1, i32 4)
        %tmp3 = extractvalue %struct.__neon_int8x8x2_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int8x8x2_t %tmp2, 1
        %tmp5 = add <8 x i8> %tmp3, %tmp4
	ret <8 x i8> %tmp5
}

define <4 x i16> @vld2lanei16(i16* %A, <4 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <4 x i16>, <4 x i16>* %B
	%tmp2 = call %struct.__neon_int16x4x2_t @llvm.arm.neon.vld2lane.v4i16(i8* %tmp0, <4 x i16> %tmp1, <4 x i16> %tmp1, i32 1, i32 8)
        %tmp3 = extractvalue %struct.__neon_int16x4x2_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int16x4x2_t %tmp2, 1
        %tmp5 = add <4 x i16> %tmp3, %tmp4
	ret <4 x i16> %tmp5
}

define <2 x i32> @vld2lanei32(i32* %A, <2 x i32>* %B) nounwind {


	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <2 x i32>, <2 x i32>* %B
	%tmp2 = call %struct.__neon_int32x2x2_t @llvm.arm.neon.vld2lane.v2i32(i8* %tmp0, <2 x i32> %tmp1, <2 x i32> %tmp1, i32 1, i32 1)
        %tmp3 = extractvalue %struct.__neon_int32x2x2_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int32x2x2_t %tmp2, 1
        %tmp5 = add <2 x i32> %tmp3, %tmp4
	ret <2 x i32> %tmp5
}


define <2 x i32> @vld2lanei32_update(i32** %ptr, <2 x i32>* %B) nounwind {


	%A = load i32*, i32** %ptr
	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <2 x i32>, <2 x i32>* %B
	%tmp2 = call %struct.__neon_int32x2x2_t @llvm.arm.neon.vld2lane.v2i32(i8* %tmp0, <2 x i32> %tmp1, <2 x i32> %tmp1, i32 1, i32 1)
	%tmp3 = extractvalue %struct.__neon_int32x2x2_t %tmp2, 0
	%tmp4 = extractvalue %struct.__neon_int32x2x2_t %tmp2, 1
	%tmp5 = add <2 x i32> %tmp3, %tmp4
	%tmp6 = getelementptr i32, i32* %A, i32 2
	store i32* %tmp6, i32** %ptr
	ret <2 x i32> %tmp5
}

define <2 x float> @vld2lanef(float* %A, <2 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <2 x float>, <2 x float>* %B
	%tmp2 = call %struct.__neon_float32x2x2_t @llvm.arm.neon.vld2lane.v2f32(i8* %tmp0, <2 x float> %tmp1, <2 x float> %tmp1, i32 1, i32 1)
        %tmp3 = extractvalue %struct.__neon_float32x2x2_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_float32x2x2_t %tmp2, 1
        %tmp5 = fadd <2 x float> %tmp3, %tmp4
	ret <2 x float> %tmp5
}

define <8 x i16> @vld2laneQi16(i16* %A, <8 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <8 x i16>, <8 x i16>* %B
	%tmp2 = call %struct.__neon_int16x8x2_t @llvm.arm.neon.vld2lane.v8i16(i8* %tmp0, <8 x i16> %tmp1, <8 x i16> %tmp1, i32 5, i32 1)
        %tmp3 = extractvalue %struct.__neon_int16x8x2_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int16x8x2_t %tmp2, 1
        %tmp5 = add <8 x i16> %tmp3, %tmp4
	ret <8 x i16> %tmp5
}

define <4 x i32> @vld2laneQi32(i32* %A, <4 x i32>* %B) nounwind {



	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <4 x i32>, <4 x i32>* %B
	%tmp2 = call %struct.__neon_int32x4x2_t @llvm.arm.neon.vld2lane.v4i32(i8* %tmp0, <4 x i32> %tmp1, <4 x i32> %tmp1, i32 2, i32 16)
        %tmp3 = extractvalue %struct.__neon_int32x4x2_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int32x4x2_t %tmp2, 1
        %tmp5 = add <4 x i32> %tmp3, %tmp4
	ret <4 x i32> %tmp5
}

define <4 x float> @vld2laneQf(float* %A, <4 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <4 x float>, <4 x float>* %B
	%tmp2 = call %struct.__neon_float32x4x2_t @llvm.arm.neon.vld2lane.v4f32(i8* %tmp0, <4 x float> %tmp1, <4 x float> %tmp1, i32 1, i32 1)
        %tmp3 = extractvalue %struct.__neon_float32x4x2_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_float32x4x2_t %tmp2, 1
        %tmp5 = fadd <4 x float> %tmp3, %tmp4
	ret <4 x float> %tmp5
}

declare %struct.__neon_int8x8x2_t @llvm.arm.neon.vld2lane.v8i8(i8*, <8 x i8>, <8 x i8>, i32, i32) nounwind readonly
declare %struct.__neon_int16x4x2_t @llvm.arm.neon.vld2lane.v4i16(i8*, <4 x i16>, <4 x i16>, i32, i32) nounwind readonly
declare %struct.__neon_int32x2x2_t @llvm.arm.neon.vld2lane.v2i32(i8*, <2 x i32>, <2 x i32>, i32, i32) nounwind readonly
declare %struct.__neon_float32x2x2_t @llvm.arm.neon.vld2lane.v2f32(i8*, <2 x float>, <2 x float>, i32, i32) nounwind readonly

declare %struct.__neon_int16x8x2_t @llvm.arm.neon.vld2lane.v8i16(i8*, <8 x i16>, <8 x i16>, i32, i32) nounwind readonly
declare %struct.__neon_int32x4x2_t @llvm.arm.neon.vld2lane.v4i32(i8*, <4 x i32>, <4 x i32>, i32, i32) nounwind readonly
declare %struct.__neon_float32x4x2_t @llvm.arm.neon.vld2lane.v4f32(i8*, <4 x float>, <4 x float>, i32, i32) nounwind readonly

%struct.__neon_int8x8x3_t = type { <8 x i8>,  <8 x i8>,  <8 x i8> }
%struct.__neon_int16x4x3_t = type { <4 x i16>, <4 x i16>, <4 x i16> }
%struct.__neon_int32x2x3_t = type { <2 x i32>, <2 x i32>, <2 x i32> }
%struct.__neon_float32x2x3_t = type { <2 x float>, <2 x float>, <2 x float> }

%struct.__neon_int16x8x3_t = type { <8 x i16>, <8 x i16>, <8 x i16> }
%struct.__neon_int32x4x3_t = type { <4 x i32>, <4 x i32>, <4 x i32> }
%struct.__neon_float32x4x3_t = type { <4 x float>, <4 x float>, <4 x float> }

define <8 x i8> @vld3lanei8(i8* %A, <8 x i8>* %B) nounwind {


	%tmp1 = load <8 x i8>, <8 x i8>* %B
	%tmp2 = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3lane.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 1, i32 1)
        %tmp3 = extractvalue %struct.__neon_int8x8x3_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int8x8x3_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int8x8x3_t %tmp2, 2
        %tmp6 = add <8 x i8> %tmp3, %tmp4
        %tmp7 = add <8 x i8> %tmp5, %tmp6
	ret <8 x i8> %tmp7
}

define <4 x i16> @vld3lanei16(i16* %A, <4 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <4 x i16>, <4 x i16>* %B
	%tmp2 = call %struct.__neon_int16x4x3_t @llvm.arm.neon.vld3lane.v4i16(i8* %tmp0, <4 x i16> %tmp1, <4 x i16> %tmp1, <4 x i16> %tmp1, i32 1, i32 8)
        %tmp3 = extractvalue %struct.__neon_int16x4x3_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int16x4x3_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int16x4x3_t %tmp2, 2
        %tmp6 = add <4 x i16> %tmp3, %tmp4
        %tmp7 = add <4 x i16> %tmp5, %tmp6
	ret <4 x i16> %tmp7
}

define <2 x i32> @vld3lanei32(i32* %A, <2 x i32>* %B) nounwind {


	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <2 x i32>, <2 x i32>* %B
	%tmp2 = call %struct.__neon_int32x2x3_t @llvm.arm.neon.vld3lane.v2i32(i8* %tmp0, <2 x i32> %tmp1, <2 x i32> %tmp1, <2 x i32> %tmp1, i32 1, i32 1)
        %tmp3 = extractvalue %struct.__neon_int32x2x3_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int32x2x3_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int32x2x3_t %tmp2, 2
        %tmp6 = add <2 x i32> %tmp3, %tmp4
        %tmp7 = add <2 x i32> %tmp5, %tmp6
	ret <2 x i32> %tmp7
}

define <2 x float> @vld3lanef(float* %A, <2 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <2 x float>, <2 x float>* %B
	%tmp2 = call %struct.__neon_float32x2x3_t @llvm.arm.neon.vld3lane.v2f32(i8* %tmp0, <2 x float> %tmp1, <2 x float> %tmp1, <2 x float> %tmp1, i32 1, i32 1)
        %tmp3 = extractvalue %struct.__neon_float32x2x3_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_float32x2x3_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_float32x2x3_t %tmp2, 2
        %tmp6 = fadd <2 x float> %tmp3, %tmp4
        %tmp7 = fadd <2 x float> %tmp5, %tmp6
	ret <2 x float> %tmp7
}

define <8 x i16> @vld3laneQi16(i16* %A, <8 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <8 x i16>, <8 x i16>* %B
	%tmp2 = call %struct.__neon_int16x8x3_t @llvm.arm.neon.vld3lane.v8i16(i8* %tmp0, <8 x i16> %tmp1, <8 x i16> %tmp1, <8 x i16> %tmp1, i32 1, i32 8)
        %tmp3 = extractvalue %struct.__neon_int16x8x3_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int16x8x3_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int16x8x3_t %tmp2, 2
        %tmp6 = add <8 x i16> %tmp3, %tmp4
        %tmp7 = add <8 x i16> %tmp5, %tmp6
	ret <8 x i16> %tmp7
}


define <8 x i16> @vld3laneQi16_update(i16** %ptr, <8 x i16>* %B, i32 %inc) nounwind {


	%A = load i16*, i16** %ptr
	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <8 x i16>, <8 x i16>* %B
	%tmp2 = call %struct.__neon_int16x8x3_t @llvm.arm.neon.vld3lane.v8i16(i8* %tmp0, <8 x i16> %tmp1, <8 x i16> %tmp1, <8 x i16> %tmp1, i32 1, i32 8)
	%tmp3 = extractvalue %struct.__neon_int16x8x3_t %tmp2, 0
	%tmp4 = extractvalue %struct.__neon_int16x8x3_t %tmp2, 1
	%tmp5 = extractvalue %struct.__neon_int16x8x3_t %tmp2, 2
	%tmp6 = add <8 x i16> %tmp3, %tmp4
	%tmp7 = add <8 x i16> %tmp5, %tmp6
	%tmp8 = getelementptr i16, i16* %A, i32 %inc
	store i16* %tmp8, i16** %ptr
	ret <8 x i16> %tmp7
}

define <4 x i32> @vld3laneQi32(i32* %A, <4 x i32>* %B) nounwind {


	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <4 x i32>, <4 x i32>* %B
	%tmp2 = call %struct.__neon_int32x4x3_t @llvm.arm.neon.vld3lane.v4i32(i8* %tmp0, <4 x i32> %tmp1, <4 x i32> %tmp1, <4 x i32> %tmp1, i32 3, i32 1)
        %tmp3 = extractvalue %struct.__neon_int32x4x3_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int32x4x3_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int32x4x3_t %tmp2, 2
        %tmp6 = add <4 x i32> %tmp3, %tmp4
        %tmp7 = add <4 x i32> %tmp5, %tmp6
	ret <4 x i32> %tmp7
}

define <4 x float> @vld3laneQf(float* %A, <4 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <4 x float>, <4 x float>* %B
	%tmp2 = call %struct.__neon_float32x4x3_t @llvm.arm.neon.vld3lane.v4f32(i8* %tmp0, <4 x float> %tmp1, <4 x float> %tmp1, <4 x float> %tmp1, i32 1, i32 1)
        %tmp3 = extractvalue %struct.__neon_float32x4x3_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_float32x4x3_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_float32x4x3_t %tmp2, 2
        %tmp6 = fadd <4 x float> %tmp3, %tmp4
        %tmp7 = fadd <4 x float> %tmp5, %tmp6
	ret <4 x float> %tmp7
}

declare %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3lane.v8i8(i8*, <8 x i8>, <8 x i8>, <8 x i8>, i32, i32) nounwind readonly
declare %struct.__neon_int16x4x3_t @llvm.arm.neon.vld3lane.v4i16(i8*, <4 x i16>, <4 x i16>, <4 x i16>, i32, i32) nounwind readonly
declare %struct.__neon_int32x2x3_t @llvm.arm.neon.vld3lane.v2i32(i8*, <2 x i32>, <2 x i32>, <2 x i32>, i32, i32) nounwind readonly
declare %struct.__neon_float32x2x3_t @llvm.arm.neon.vld3lane.v2f32(i8*, <2 x float>, <2 x float>, <2 x float>, i32, i32) nounwind readonly

declare %struct.__neon_int16x8x3_t @llvm.arm.neon.vld3lane.v8i16(i8*, <8 x i16>, <8 x i16>, <8 x i16>, i32, i32) nounwind readonly
declare %struct.__neon_int32x4x3_t @llvm.arm.neon.vld3lane.v4i32(i8*, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32) nounwind readonly
declare %struct.__neon_float32x4x3_t @llvm.arm.neon.vld3lane.v4f32(i8*, <4 x float>, <4 x float>, <4 x float>, i32, i32) nounwind readonly

%struct.__neon_int8x8x4_t = type { <8 x i8>,  <8 x i8>,  <8 x i8>,  <8 x i8> }
%struct.__neon_int16x4x4_t = type { <4 x i16>, <4 x i16>, <4 x i16>, <4 x i16> }
%struct.__neon_int32x2x4_t = type { <2 x i32>, <2 x i32>, <2 x i32>, <2 x i32> }
%struct.__neon_float32x2x4_t = type { <2 x float>, <2 x float>, <2 x float>, <2 x float> }

%struct.__neon_int16x8x4_t = type { <8 x i16>, <8 x i16>, <8 x i16>, <8 x i16> }
%struct.__neon_int32x4x4_t = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> }
%struct.__neon_float32x4x4_t = type { <4 x float>, <4 x float>, <4 x float>, <4 x float> }

define <8 x i8> @vld4lanei8(i8* %A, <8 x i8>* %B) nounwind {



	%tmp1 = load <8 x i8>, <8 x i8>* %B
	%tmp2 = call %struct.__neon_int8x8x4_t @llvm.arm.neon.vld4lane.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 1, i32 8)
        %tmp3 = extractvalue %struct.__neon_int8x8x4_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int8x8x4_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int8x8x4_t %tmp2, 2
        %tmp6 = extractvalue %struct.__neon_int8x8x4_t %tmp2, 3
        %tmp7 = add <8 x i8> %tmp3, %tmp4
        %tmp8 = add <8 x i8> %tmp5, %tmp6
        %tmp9 = add <8 x i8> %tmp7, %tmp8
	ret <8 x i8> %tmp9
}


define <8 x i8> @vld4lanei8_update(i8** %ptr, <8 x i8>* %B) nounwind {


	%A = load i8*, i8** %ptr
	%tmp1 = load <8 x i8>, <8 x i8>* %B
	%tmp2 = call %struct.__neon_int8x8x4_t @llvm.arm.neon.vld4lane.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 1, i32 8)
	%tmp3 = extractvalue %struct.__neon_int8x8x4_t %tmp2, 0
	%tmp4 = extractvalue %struct.__neon_int8x8x4_t %tmp2, 1
	%tmp5 = extractvalue %struct.__neon_int8x8x4_t %tmp2, 2
	%tmp6 = extractvalue %struct.__neon_int8x8x4_t %tmp2, 3
	%tmp7 = add <8 x i8> %tmp3, %tmp4
	%tmp8 = add <8 x i8> %tmp5, %tmp6
	%tmp9 = add <8 x i8> %tmp7, %tmp8
	%tmp10 = getelementptr i8, i8* %A, i32 4
	store i8* %tmp10, i8** %ptr
	ret <8 x i8> %tmp9
}

define <4 x i16> @vld4lanei16(i16* %A, <4 x i16>* %B) nounwind {




	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <4 x i16>, <4 x i16>* %B
	%tmp2 = call %struct.__neon_int16x4x4_t @llvm.arm.neon.vld4lane.v4i16(i8* %tmp0, <4 x i16> %tmp1, <4 x i16> %tmp1, <4 x i16> %tmp1, <4 x i16> %tmp1, i32 1, i32 4)
        %tmp3 = extractvalue %struct.__neon_int16x4x4_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int16x4x4_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int16x4x4_t %tmp2, 2
        %tmp6 = extractvalue %struct.__neon_int16x4x4_t %tmp2, 3
        %tmp7 = add <4 x i16> %tmp3, %tmp4
        %tmp8 = add <4 x i16> %tmp5, %tmp6
        %tmp9 = add <4 x i16> %tmp7, %tmp8
	ret <4 x i16> %tmp9
}

define <2 x i32> @vld4lanei32(i32* %A, <2 x i32>* %B) nounwind {




	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <2 x i32>, <2 x i32>* %B
	%tmp2 = call %struct.__neon_int32x2x4_t @llvm.arm.neon.vld4lane.v2i32(i8* %tmp0, <2 x i32> %tmp1, <2 x i32> %tmp1, <2 x i32> %tmp1, <2 x i32> %tmp1, i32 1, i32 8)
        %tmp3 = extractvalue %struct.__neon_int32x2x4_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int32x2x4_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int32x2x4_t %tmp2, 2
        %tmp6 = extractvalue %struct.__neon_int32x2x4_t %tmp2, 3
        %tmp7 = add <2 x i32> %tmp3, %tmp4
        %tmp8 = add <2 x i32> %tmp5, %tmp6
        %tmp9 = add <2 x i32> %tmp7, %tmp8
	ret <2 x i32> %tmp9
}

define <2 x float> @vld4lanef(float* %A, <2 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <2 x float>, <2 x float>* %B
	%tmp2 = call %struct.__neon_float32x2x4_t @llvm.arm.neon.vld4lane.v2f32(i8* %tmp0, <2 x float> %tmp1, <2 x float> %tmp1, <2 x float> %tmp1, <2 x float> %tmp1, i32 1, i32 1)
        %tmp3 = extractvalue %struct.__neon_float32x2x4_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_float32x2x4_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_float32x2x4_t %tmp2, 2
        %tmp6 = extractvalue %struct.__neon_float32x2x4_t %tmp2, 3
        %tmp7 = fadd <2 x float> %tmp3, %tmp4
        %tmp8 = fadd <2 x float> %tmp5, %tmp6
        %tmp9 = fadd <2 x float> %tmp7, %tmp8
	ret <2 x float> %tmp9
}

define <8 x i16> @vld4laneQi16(i16* %A, <8 x i16>* %B) nounwind {



	%tmp0 = bitcast i16* %A to i8*
	%tmp1 = load <8 x i16>, <8 x i16>* %B
	%tmp2 = call %struct.__neon_int16x8x4_t @llvm.arm.neon.vld4lane.v8i16(i8* %tmp0, <8 x i16> %tmp1, <8 x i16> %tmp1, <8 x i16> %tmp1, <8 x i16> %tmp1, i32 1, i32 16)
        %tmp3 = extractvalue %struct.__neon_int16x8x4_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int16x8x4_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int16x8x4_t %tmp2, 2
        %tmp6 = extractvalue %struct.__neon_int16x8x4_t %tmp2, 3
        %tmp7 = add <8 x i16> %tmp3, %tmp4
        %tmp8 = add <8 x i16> %tmp5, %tmp6
        %tmp9 = add <8 x i16> %tmp7, %tmp8
	ret <8 x i16> %tmp9
}

define <4 x i32> @vld4laneQi32(i32* %A, <4 x i32>* %B) nounwind {



	%tmp0 = bitcast i32* %A to i8*
	%tmp1 = load <4 x i32>, <4 x i32>* %B
	%tmp2 = call %struct.__neon_int32x4x4_t @llvm.arm.neon.vld4lane.v4i32(i8* %tmp0, <4 x i32> %tmp1, <4 x i32> %tmp1, <4 x i32> %tmp1, <4 x i32> %tmp1, i32 2, i32 1)
        %tmp3 = extractvalue %struct.__neon_int32x4x4_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_int32x4x4_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_int32x4x4_t %tmp2, 2
        %tmp6 = extractvalue %struct.__neon_int32x4x4_t %tmp2, 3
        %tmp7 = add <4 x i32> %tmp3, %tmp4
        %tmp8 = add <4 x i32> %tmp5, %tmp6
        %tmp9 = add <4 x i32> %tmp7, %tmp8
	ret <4 x i32> %tmp9
}

define <4 x float> @vld4laneQf(float* %A, <4 x float>* %B) nounwind {


	%tmp0 = bitcast float* %A to i8*
	%tmp1 = load <4 x float>, <4 x float>* %B
	%tmp2 = call %struct.__neon_float32x4x4_t @llvm.arm.neon.vld4lane.v4f32(i8* %tmp0, <4 x float> %tmp1, <4 x float> %tmp1, <4 x float> %tmp1, <4 x float> %tmp1, i32 1, i32 1)
        %tmp3 = extractvalue %struct.__neon_float32x4x4_t %tmp2, 0
        %tmp4 = extractvalue %struct.__neon_float32x4x4_t %tmp2, 1
        %tmp5 = extractvalue %struct.__neon_float32x4x4_t %tmp2, 2
        %tmp6 = extractvalue %struct.__neon_float32x4x4_t %tmp2, 3
        %tmp7 = fadd <4 x float> %tmp3, %tmp4
        %tmp8 = fadd <4 x float> %tmp5, %tmp6
        %tmp9 = fadd <4 x float> %tmp7, %tmp8
	ret <4 x float> %tmp9
}

declare %struct.__neon_int8x8x4_t @llvm.arm.neon.vld4lane.v8i8(i8*, <8 x i8>, <8 x i8>, <8 x i8>, <8 x i8>, i32, i32) nounwind readonly
declare %struct.__neon_int16x4x4_t @llvm.arm.neon.vld4lane.v4i16(i8*, <4 x i16>, <4 x i16>, <4 x i16>, <4 x i16>, i32, i32) nounwind readonly
declare %struct.__neon_int32x2x4_t @llvm.arm.neon.vld4lane.v2i32(i8*, <2 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, i32, i32) nounwind readonly
declare %struct.__neon_float32x2x4_t @llvm.arm.neon.vld4lane.v2f32(i8*, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32) nounwind readonly

declare %struct.__neon_int16x8x4_t @llvm.arm.neon.vld4lane.v8i16(i8*, <8 x i16>, <8 x i16>, <8 x i16>, <8 x i16>, i32, i32) nounwind readonly
declare %struct.__neon_int32x4x4_t @llvm.arm.neon.vld4lane.v4i32(i8*, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32) nounwind readonly
declare %struct.__neon_float32x4x4_t @llvm.arm.neon.vld4lane.v4f32(i8*, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32) nounwind readonly





define <8 x i16> @test_qqqq_regsequence_subreg([6 x i64] %b) nounwind {


  %tmp63 = extractvalue [6 x i64] %b, 5
  %tmp64 = zext i64 %tmp63 to i128
  %tmp65 = shl i128 %tmp64, 64
  %ins67 = or i128 %tmp65, 0
  %tmp78 = bitcast i128 %ins67 to <8 x i16>
  %vld3_lane = tail call %struct.__neon_int16x8x3_t @llvm.arm.neon.vld3lane.v8i16(i8* undef, <8 x i16> undef, <8 x i16> undef, <8 x i16> %tmp78, i32 1, i32 2)
  %tmp3 = extractvalue %struct.__neon_int16x8x3_t %vld3_lane, 0
  %tmp4 = extractvalue %struct.__neon_int16x8x3_t %vld3_lane, 1
  %tmp5 = extractvalue %struct.__neon_int16x8x3_t %vld3_lane, 2
  %tmp6 = add <8 x i16> %tmp3, %tmp4
  %tmp7 = add <8 x i16> %tmp5, %tmp6
  ret <8 x i16> %tmp7
}

declare void @llvm.trap() nounwind
