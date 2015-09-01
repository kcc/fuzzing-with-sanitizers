



%struct.int16x8_t = type { <8 x i16> }
%struct.int32x4_t = type { <4 x i32> }
%struct.__neon_int8x8x2_t = type { <8 x i8>, <8 x i8> }
%struct.__neon_int8x8x3_t = type { <8 x i8>,  <8 x i8>,  <8 x i8> }
%struct.__neon_int16x8x2_t = type { <8 x i16>, <8 x i16> }
%struct.__neon_int32x4x2_t = type { <4 x i32>, <4 x i32> }

define void @t1(i16* %i_ptr, i16* %o_ptr, %struct.int32x4_t* nocapture %vT0ptr, %struct.int32x4_t* nocapture %vT1ptr) nounwind {
entry:








  %0 = getelementptr inbounds %struct.int32x4_t, %struct.int32x4_t* %vT0ptr, i32 0, i32 0 
  %1 = load <4 x i32>, <4 x i32>* %0, align 16               
  %2 = getelementptr inbounds %struct.int32x4_t, %struct.int32x4_t* %vT1ptr, i32 0, i32 0 
  %3 = load <4 x i32>, <4 x i32>* %2, align 16               
  %4 = bitcast i16* %i_ptr to i8*                 
  %5 = tail call <8 x i16> @llvm.arm.neon.vld1.v8i16(i8* %4, i32 1) 
  %6 = bitcast <8 x i16> %5 to <2 x double>       
  %7 = extractelement <2 x double> %6, i32 0      
  %8 = bitcast double %7 to <4 x i16>             
  %9 = sext <4 x i16> %8 to <4 x i32>             
  %10 = extractelement <2 x double> %6, i32 1     
  %11 = bitcast double %10 to <4 x i16>           
  %12 = sext <4 x i16> %11 to <4 x i32>           
  %13 = mul <4 x i32> %1, %9                      
  %14 = mul <4 x i32> %3, %12                     
  %15 = lshr <4 x i32> %13, <i32 12, i32 12, i32 12, i32 12>
  %trunc_15 = trunc <4 x i32> %15 to <4 x i16>
  %16 = lshr <4 x i32> %14, <i32 12, i32 12, i32 12, i32 12>
  %trunc_16 = trunc <4 x i32> %16 to <4 x i16>
  %17 = shufflevector <4 x i16> %trunc_15, <4 x i16> %trunc_16, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> 
  %18 = bitcast i16* %o_ptr to i8*                
  tail call void @llvm.arm.neon.vst1.v8i16(i8* %18, <8 x i16> %17, i32 1)
  ret void
}

define void @t2(i16* %i_ptr, i16* %o_ptr, %struct.int16x8_t* nocapture %vT0ptr, %struct.int16x8_t* nocapture %vT1ptr) nounwind {
entry:









  %0 = getelementptr inbounds %struct.int16x8_t, %struct.int16x8_t* %vT0ptr, i32 0, i32 0 
  %1 = load <8 x i16>, <8 x i16>* %0, align 16               
  %2 = getelementptr inbounds %struct.int16x8_t, %struct.int16x8_t* %vT1ptr, i32 0, i32 0 
  %3 = load <8 x i16>, <8 x i16>* %2, align 16               
  %4 = bitcast i16* %i_ptr to i8*                 
  %5 = tail call <8 x i16> @llvm.arm.neon.vld1.v8i16(i8* %4, i32 1) 
  %6 = getelementptr inbounds i16, i16* %i_ptr, i32 8  
  %7 = bitcast i16* %6 to i8*                     
  %8 = tail call <8 x i16> @llvm.arm.neon.vld1.v8i16(i8* %7, i32 1) 
  %9 = mul <8 x i16> %1, %5                       
  %10 = mul <8 x i16> %3, %8                      
  %11 = bitcast i16* %o_ptr to i8*                
  tail call void @llvm.arm.neon.vst1.v8i16(i8* %11, <8 x i16> %9, i32 1)
  %12 = getelementptr inbounds i16, i16* %o_ptr, i32 8 
  %13 = bitcast i16* %12 to i8*                   
  tail call void @llvm.arm.neon.vst1.v8i16(i8* %13, <8 x i16> %10, i32 1)
  ret void
}

define <8 x i8> @t3(i8* %A, i8* %B) nounwind {






  %tmp1 = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8* %A, i32 1) 
  %tmp2 = extractvalue %struct.__neon_int8x8x3_t %tmp1, 0 
  %tmp3 = extractvalue %struct.__neon_int8x8x3_t %tmp1, 2 
  %tmp4 = extractvalue %struct.__neon_int8x8x3_t %tmp1, 1 
  %tmp5 = sub <8 x i8> %tmp3, %tmp4
  %tmp6 = add <8 x i8> %tmp2, %tmp3               
  %tmp7 = mul <8 x i8> %tmp4, %tmp2
  tail call void @llvm.arm.neon.vst3.v8i8(i8* %B, <8 x i8> %tmp5, <8 x i8> %tmp6, <8 x i8> %tmp7, i32 1)
  ret <8 x i8> %tmp4
}

define void @t4(i32* %in, i32* %out) nounwind {
entry:






  %tmp1 = bitcast i32* %in to i8*                 
  %tmp2 = tail call %struct.__neon_int32x4x2_t @llvm.arm.neon.vld2.v4i32(i8* %tmp1, i32 1) 
  %tmp3 = getelementptr inbounds i32, i32* %in, i32 8  
  %tmp4 = bitcast i32* %tmp3 to i8*               
  %tmp5 = tail call %struct.__neon_int32x4x2_t @llvm.arm.neon.vld2.v4i32(i8* %tmp4, i32 1) 
  %tmp8 = bitcast i32* %out to i8*                
  br i1 undef, label %return1, label %return2

return1:





  %tmp52 = extractvalue %struct.__neon_int32x4x2_t %tmp2, 0 
  %tmp57 = extractvalue %struct.__neon_int32x4x2_t %tmp2, 1 
  %tmp = extractvalue %struct.__neon_int32x4x2_t %tmp5, 0 
  %tmp39 = extractvalue %struct.__neon_int32x4x2_t %tmp5, 1 
  %tmp6 = add <4 x i32> %tmp52, %tmp              
  %tmp7 = add <4 x i32> %tmp57, %tmp39            
  tail call void @llvm.arm.neon.vst2.v4i32(i8* %tmp8, <4 x i32> %tmp6, <4 x i32> %tmp7, i32 1)
  ret void

return2:




  %tmp100 = extractvalue %struct.__neon_int32x4x2_t %tmp2, 0 
  %tmp101 = extractvalue %struct.__neon_int32x4x2_t %tmp5, 1 
  %tmp102 = add <4 x i32> %tmp100, %tmp101              
  tail call void @llvm.arm.neon.vst2.v4i32(i8* %tmp8, <4 x i32> %tmp102, <4 x i32> %tmp101, i32 1)
  call void @llvm.trap()
  unreachable
}

define <8 x i16> @t5(i16* %A, <8 x i16>* %B) nounwind {








  %tmp0 = bitcast i16* %A to i8*                  
  %tmp1 = load <8 x i16>, <8 x i16>* %B                      
  %tmp2 = call %struct.__neon_int16x8x2_t @llvm.arm.neon.vld2lane.v8i16(i8* %tmp0, <8 x i16> %tmp1, <8 x i16> %tmp1, i32 1, i32 1) 
  %tmp3 = extractvalue %struct.__neon_int16x8x2_t %tmp2, 0 
  %tmp4 = extractvalue %struct.__neon_int16x8x2_t %tmp2, 1 
  %tmp5 = add <8 x i16> %tmp3, %tmp4              
  ret <8 x i16> %tmp5
}

define <8 x i8> @t6(i8* %A, <8 x i8>* %B) nounwind {




  %tmp1 = load <8 x i8>, <8 x i8>* %B                       
  %tmp2 = call %struct.__neon_int8x8x2_t @llvm.arm.neon.vld2lane.v8i8(i8* %A, <8 x i8> %tmp1, <8 x i8> %tmp1, i32 1, i32 1) 
  %tmp3 = extractvalue %struct.__neon_int8x8x2_t %tmp2, 0 
  %tmp4 = extractvalue %struct.__neon_int8x8x2_t %tmp2, 1 
  %tmp5 = add <8 x i8> %tmp3, %tmp4               
  ret <8 x i8> %tmp5
}

define void @t7(i32* %iptr, i32* %optr) nounwind {
entry:








  %0 = bitcast i32* %iptr to i8*                  
  %1 = tail call %struct.__neon_int32x4x2_t @llvm.arm.neon.vld2.v4i32(i8* %0, i32 1) 
  %tmp57 = extractvalue %struct.__neon_int32x4x2_t %1, 0 
  %tmp60 = extractvalue %struct.__neon_int32x4x2_t %1, 1 
  %2 = bitcast i32* %optr to i8*                  
  tail call void @llvm.arm.neon.vst2.v4i32(i8* %2, <4 x i32> %tmp57, <4 x i32> %tmp60, i32 1)
  %3 = tail call <4 x i32> @llvm.arm.neon.vld1.v4i32(i8* %0, i32 1) 
  %4 = shufflevector <4 x i32> %3, <4 x i32> undef, <4 x i32> <i32 0, i32 2, i32 0, i32 2> 
  tail call void @llvm.arm.neon.vst1.v4i32(i8* %2, <4 x i32> %4, i32 1)
  ret void
}


define arm_aapcs_vfpcc i32 @t8() nounwind {


bb.nph55.bb.nph55.split_crit_edge:
  br label %bb3

bb3:                                              
  br i1 undef, label %bb5, label %bb3

bb5:                                              
  br label %bb.i25

bb.i25:                                           
  %0 = shufflevector <2 x float> undef, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3> 
  %1 = call <4 x float> @llvm.arm.neon.vrsqrte.v4f32(<4 x float> %0) nounwind 
  %2 = fmul <4 x float> %1, undef                 
  %3 = fmul <4 x float> undef, %2                 
  %tmp26.i = bitcast <4 x float> %3 to <2 x double> 
  %4 = extractelement <2 x double> %tmp26.i, i32 0 
  %5 = bitcast double %4 to <2 x float>           
  %6 = extractelement <2 x float> %5, i32 1       
  store float %6, float* undef, align 4
  br i1 undef, label %bb6, label %bb.i25

bb6:                                              
  br i1 undef, label %bb7, label %bb14

bb7:                                              
  br label %bb.i49

bb.i49:                                           
  br i1 undef, label %bb.i19, label %bb.i49

bb.i19:                                           
  br i1 undef, label %exit, label %bb.i19

exit:          
  unreachable

bb14:                                             
  ret i32 0
}

%0 = type { %1, %1, %1, %1 }
%1 = type { %2 }
%2 = type { <4 x float> }
%3 = type { %0, %1 }


define arm_aapcs_vfpcc float @t9(%0* nocapture, %3* nocapture) nounwind {





  %3 = bitcast double 0.000000e+00 to <2 x float> 
  %4 = shufflevector <2 x float> %3, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3> 
  store <4 x float> %4, <4 x float>* undef, align 16
  %5 = shufflevector <2 x float> %3, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3> 
  store <4 x float> %5, <4 x float>* undef, align 16
  br label %8


  br label %7


  br label %8


  br label %6


  ret float undef


  ret float 9.990000e+02
}


define arm_aapcs_vfpcc i32 @t10() nounwind {
entry:




  %0 = shufflevector <4 x float> zeroinitializer, <4 x float> undef, <4 x i32> zeroinitializer 
  %1 = insertelement <4 x float> %0, float undef, i32 1 
  %2 = insertelement <4 x float> %1, float undef, i32 2 
  %3 = insertelement <4 x float> %2, float undef, i32 3 
  %tmp54.i = bitcast <4 x float> %3 to <2 x double> 
  %4 = extractelement <2 x double> %tmp54.i, i32 1 
  %5 = bitcast double %4 to <2 x float>           
  %6 = shufflevector <2 x float> %5, <2 x float> undef, <4 x i32> zeroinitializer 
  %7 = fmul <4 x float> undef, %6                 
  %8 = fadd <4 x float> %7, undef                 
  %9 = fadd <4 x float> %8, undef                 
  %10 = shufflevector <4 x float> undef, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 7> 
  %11 = fmul <4 x float> %10, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01> 
  %12 = shufflevector <4 x float> %11, <4 x float> undef, <4 x i32> <i32 3, i32 undef, i32 undef, i32 undef> 
  %13 = shufflevector <4 x float> %12, <4 x float> undef, <4 x i32> zeroinitializer 
  %14 = fmul <4 x float> %13, undef               
  %15 = fadd <4 x float> undef, %14               
  %16 = shufflevector <4 x float> undef, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 6, i32 3> 
  %17 = fmul <4 x float> %16, undef               
  %18 = extractelement <4 x float> %17, i32 2     
  store float %18, float* undef, align 4
  br i1 undef, label %exit, label %bb14

exit:          
  unreachable

bb14:                                             
  ret i32 0
}


define <8 x i8> @t11(i8* %A1, i8* %A2, i8* %A3, i8* %A4, i8* %A5, i8* %A6, i8* %A7, i8* %A8, i8* %B) nounwind {
  %tmp1d = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8* %A4, i32 1) 
  %tmp2d = extractvalue %struct.__neon_int8x8x3_t %tmp1d, 0 
  %tmp1f = call %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8* %A6, i32 1) 
  %tmp2f = extractvalue %struct.__neon_int8x8x3_t %tmp1f, 0 
  %tmp2bd = add <8 x i8> zeroinitializer, %tmp2d  
  %tmp2abcd = mul <8 x i8> zeroinitializer, %tmp2bd 
  %tmp2ef = sub <8 x i8> zeroinitializer, %tmp2f  
  %tmp2efgh = mul <8 x i8> %tmp2ef, undef         
  call void @llvm.arm.neon.vst3.v8i8(i8* %A2, <8 x i8> undef, <8 x i8> undef, <8 x i8> %tmp2efgh, i32 1)
  %tmp2 = sub <8 x i8> %tmp2efgh, %tmp2abcd       
  %tmp7 = mul <8 x i8> undef, %tmp2               
  tail call void @llvm.arm.neon.vst3.v8i8(i8* %B, <8 x i8> undef, <8 x i8> undef, <8 x i8> %tmp7, i32 1)
  ret <8 x i8> undef
}

declare <4 x i32> @llvm.arm.neon.vld1.v4i32(i8*, i32) nounwind readonly

declare <8 x i16> @llvm.arm.neon.vld1.v8i16(i8*, i32) nounwind readonly

declare <4 x i16> @llvm.arm.neon.vshiftn.v4i16(<4 x i32>, <4 x i32>) nounwind readnone

declare void @llvm.arm.neon.vst1.v4i32(i8*, <4 x i32>, i32) nounwind

declare void @llvm.arm.neon.vst1.v8i16(i8*, <8 x i16>, i32) nounwind

declare void @llvm.arm.neon.vst3.v8i8(i8*, <8 x i8>, <8 x i8>, <8 x i8>, i32)
nounwind

declare %struct.__neon_int8x8x3_t @llvm.arm.neon.vld3.v8i8(i8*, i32) nounwind readonly

declare %struct.__neon_int32x4x2_t @llvm.arm.neon.vld2.v4i32(i8*, i32) nounwind readonly

declare %struct.__neon_int8x8x2_t @llvm.arm.neon.vld2lane.v8i8(i8*, <8 x i8>, <8 x i8>, i32, i32) nounwind readonly

declare %struct.__neon_int16x8x2_t @llvm.arm.neon.vld2lane.v8i16(i8*, <8 x i16>, <8 x i16>, i32, i32) nounwind readonly

declare void @llvm.arm.neon.vst2.v4i32(i8*, <4 x i32>, <4 x i32>, i32) nounwind

declare <4 x float> @llvm.arm.neon.vrsqrte.v4f32(<4 x float>) nounwind readnone

declare void @llvm.trap() nounwind
