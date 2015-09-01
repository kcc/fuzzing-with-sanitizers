
target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32"
target triple = "thumbv7-elf"

define void @foo() nounwind {
entry:
  %0 = tail call <2 x float> @llvm.arm.neon.vpadd.v2f32(<2 x float> undef, <2 x float> undef) nounwind 
  %tmp28 = extractelement <2 x float> %0, i32 0   
  %1 = fcmp une float %tmp28, 4.900000e+01        
  br i1 %1, label %bb, label %bb7

bb:                                               
  unreachable

bb7:                                              
  br i1 undef, label %bb8, label %bb9

bb8:                                              
  unreachable

bb9:                                              
  ret void
}

declare <2 x float> @llvm.arm.neon.vpadd.v2f32(<2 x float>, <2 x float>) nounwind readnone
