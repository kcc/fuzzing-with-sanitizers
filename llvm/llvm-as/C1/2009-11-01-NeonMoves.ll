

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "armv7-eabi"

%foo = type { <4 x float> }

define arm_aapcs_vfpcc void @bar(%foo* noalias sret %agg.result, <4 x float> %quat.0) nounwind {
entry:
  %quat_addr = alloca %foo, align 16              
  %0 = getelementptr inbounds %foo, %foo* %quat_addr, i32 0, i32 0 
  store <4 x float> %quat.0, <4 x float>* %0
  %1 = call arm_aapcs_vfpcc  <4 x float> @quux(%foo* %quat_addr) nounwind 
  %2 = fmul <4 x float> %1, %1                    
  %3 = shufflevector <4 x float> %2, <4 x float> undef, <2 x i32> <i32 0, i32 1> 
  %4 = shufflevector <4 x float> %2, <4 x float> undef, <2 x i32> <i32 2, i32 3> 


  %5 = call <2 x float> @llvm.arm.neon.vpadd.v2f32(<2 x float> %3, <2 x float> %4) nounwind 
  %6 = call <2 x float> @llvm.arm.neon.vpadd.v2f32(<2 x float> %5, <2 x float> %5) nounwind 
  %7 = shufflevector <2 x float> %6, <2 x float> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3> 

  %8 = call <4 x float> @llvm.arm.neon.vrsqrte.v4f32(<4 x float> %7) nounwind 
  %9 = fmul <4 x float> %8, %8                    
  %10 = call <4 x float> @llvm.arm.neon.vrsqrts.v4f32(<4 x float> %9, <4 x float> %7) nounwind 
  %11 = fmul <4 x float> %10, %8                  
  %12 = fmul <4 x float> %11, %1                  
  %13 = call arm_aapcs_vfpcc  %foo* @baz(%foo* %agg.result, <4 x float> %12) nounwind 
  ret void
}

declare arm_aapcs_vfpcc %foo* @baz(%foo*, <4 x float>) nounwind

declare arm_aapcs_vfpcc <4 x float> @quux(%foo* nocapture) nounwind readonly

declare <2 x float> @llvm.arm.neon.vpadd.v2f32(<2 x float>, <2 x float>) nounwind readnone

declare <4 x float> @llvm.arm.neon.vrsqrte.v4f32(<4 x float>) nounwind readnone

declare <4 x float> @llvm.arm.neon.vrsqrts.v4f32(<4 x float>, <4 x float>) nounwind readnone
