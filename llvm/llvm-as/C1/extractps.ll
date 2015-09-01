





external global float, align 16         

define internal void @""() nounwind {
        load float, float* @0, align 16                
        insertelement <4 x float> undef, float %1, i32 0                
        call <4 x float> @llvm.x86.sse.rsqrt.ss( <4 x float> %2 )              
        extractelement <4 x float> %3, i32 0            
        store float %4, float* @0, align 16
        ret void
}
define internal void @""() nounwind {
        load float, float* @0, align 16                
        insertelement <4 x float> undef, float %1, i32 1                
        call <4 x float> @llvm.x86.sse.rsqrt.ss( <4 x float> %2 )              
        extractelement <4 x float> %3, i32 1            
        store float %4, float* @0, align 16
        ret void
}

declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) nounwind readnone

