


declare <4 x float> @llvm.x86.sse.max.ss(<4 x float>, <4 x float>) nounwind readnone

declare <4 x float> @llvm.x86.sse.min.ss(<4 x float>, <4 x float>) nounwind readnone

define void @_ZN2CA3OGL20fill_surface_mesh_3dERNS0_7ContextEPKNS_6Render13MeshTransformEPKNS0_5LayerEPNS0_7SurfaceEfNS0_13TextureFilterESC_f() nounwind optsize ssp {
entry:
  br i1 undef, label %bb2.thread, label %bb2

bb2.thread:                                       
  br i1 undef, label %bb41, label %bb10.preheader

bb2:                                              
  unreachable

bb10.preheader:                                   
  br i1 undef, label %bb9, label %bb12

bb9:                                              
  br i1 undef, label %bb9, label %bb12

bb12:                                             
  br i1 undef, label %bb4.i.i, label %bb3.i.i

bb3.i.i:                                          
  unreachable

bb4.i.i:                                          
  br i1 undef, label %bb8.i.i, label %_ZN2CA3OGL12_GLOBAL__N_16LightsC1ERNS0_7ContextEPKNS0_5LayerEPKNS_6Render13MeshTransformERKNS_4Vec3IfEESF_.exit

bb8.i.i:                                          
  br i1 undef, label %_ZN2CA3OGL12_GLOBAL__N_16LightsC1ERNS0_7ContextEPKNS0_5LayerEPKNS_6Render13MeshTransformERKNS_4Vec3IfEESF_.exit, label %bb9.i.i

bb9.i.i:                                          
  br i1 undef, label %bb11.i.i, label %bb10.i.i

bb10.i.i:                                         
  unreachable

bb11.i.i:                                         
  unreachable

_ZN2CA3OGL12_GLOBAL__N_16LightsC1ERNS0_7ContextEPKNS0_5LayerEPKNS_6Render13MeshTransformERKNS_4Vec3IfEESF_.exit: 
  br i1 undef, label %bb19, label %bb14

bb14:                                             
  unreachable

bb19:                                             
  br i1 undef, label %bb.i50, label %bb6.i

bb.i50:                                           
  unreachable

bb6.i:                                            
  br i1 undef, label %bb28, label %bb.nph106

bb22:                                             
  br i1 undef, label %bb2.i.i, label %bb.i.i49

bb.i.i49:                                         
  %0 = load float, float* undef, align 4                 
  %1 = insertelement <4 x float> undef, float %0, i32 0 
  %2 = call <4 x float> @llvm.x86.sse.min.ss(<4 x float> <float 1.000000e+00, float undef, float undef, float undef>, <4 x float> %1) nounwind readnone 
  %3 = call <4 x float> @llvm.x86.sse.max.ss(<4 x float> %2, <4 x float> <float 0.000000e+00, float undef, float undef, float undef>) nounwind readnone 
  %4 = extractelement <4 x float> %3, i32 0       
  store float %4, float* undef, align 4
  %5 = call <4 x float> @llvm.x86.sse.min.ss(<4 x float> <float 1.000000e+00, float undef, float undef, float undef>, <4 x float> undef) nounwind readnone 
  %6 = call <4 x float> @llvm.x86.sse.max.ss(<4 x float> %5, <4 x float> <float 0.000000e+00, float undef, float undef, float undef>) nounwind readnone 
  %7 = extractelement <4 x float> %6, i32 0       
  store float %7, float* undef, align 4
  unreachable

bb2.i.i:                                          
  unreachable

bb26.loopexit:                                    
  br i1 undef, label %bb28, label %bb24.preheader

bb.nph106:                                        
  br label %bb24.preheader

bb24.preheader:                                   
  br i1 undef, label %bb22, label %bb26.loopexit

bb28:                                             
  unreachable

bb41:                                             
  br i1 undef, label %return, label %bb46

bb46:                                             
  ret void

return:                                           
  ret void
}
