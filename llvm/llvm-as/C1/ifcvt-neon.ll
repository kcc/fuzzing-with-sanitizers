


@a = common global float 0.000000e+00             
@b = common global float 0.000000e+00             

define float @t(i32 %c) nounwind {
entry:
  %0 = icmp sgt i32 %c, 1                         
  %1 = load float, float* @a, align 4                    
  %2 = load float, float* @b, align 4                    
  br i1 %0, label %bb, label %bb1

bb:                                               



  %3 = fadd float %1, %2                          
  br label %bb2

bb1:                                              
  %4 = fsub float %1, %2                          
  br label %bb2

bb2:                                              
  %storemerge = phi float [ %4, %bb1 ], [ %3, %bb ] 
  store float %storemerge, float* @a
  ret float %storemerge
}
