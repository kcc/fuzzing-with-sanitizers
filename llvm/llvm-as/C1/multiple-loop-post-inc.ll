














target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"

define void @foo(float* %I, i64 %IS, float* nocapture %Start, float* nocapture %Step, float* %O, i64 %OS, i64 %N) nounwind {
entry:
  %times4 = alloca float, align 4                 
  %timesN = alloca float, align 4                 
  %0 = load float, float* %Step, align 4                 
  %1 = ptrtoint float* %I to i64                  
  %2 = ptrtoint float* %O to i64                  
  %tmp = xor i64 %2, %1                           
  %tmp16 = and i64 %tmp, 15                       
  %3 = icmp eq i64 %tmp16, 0                      
  %4 = trunc i64 %IS to i32                       
  %5 = xor i32 %4, 1                              
  %6 = trunc i64 %OS to i32                       
  %7 = xor i32 %6, 1                              
  %8 = or i32 %7, %5                              
  %9 = icmp eq i32 %8, 0                          
  br i1 %9, label %bb, label %return

bb:                                               
  %10 = load float, float* %Start, align 4               
  br label %bb2

bb1:                                              
  %11 = load float, float* %I_addr.0, align 4            
  %12 = fmul float %11, %x.0                      
  store float %12, float* %O_addr.0, align 4
  %13 = fadd float %x.0, %0                       
  %indvar.next53 = add i64 %14, 1                 
  br label %bb2

bb2:                                              
  %14 = phi i64 [ %indvar.next53, %bb1 ], [ 0, %bb ] 
  %x.0 = phi float [ %13, %bb1 ], [ %10, %bb ]    
  %N_addr.0 = sub i64 %N, %14                     
  %O_addr.0 = getelementptr float, float* %O, i64 %14    
  %I_addr.0 = getelementptr float, float* %I, i64 %14    
  %15 = icmp slt i64 %N_addr.0, 1                 
  br i1 %15, label %bb4, label %bb3

bb3:                                              
  %16 = ptrtoint float* %O_addr.0 to i64          
  %17 = and i64 %16, 15                           
  %18 = icmp eq i64 %17, 0                        
  br i1 %18, label %bb4, label %bb1

bb4:                                              
  %19 = fmul float %0, 4.000000e+00               
  store float %19, float* %times4, align 4
  %20 = fmul float %0, 1.600000e+01               
  store float %20, float* %timesN, align 4
  %21 = fmul float %0, 0.000000e+00               
  %22 = fadd float %21, %x.0                      
  %23 = fadd float %x.0, %0                       
  %24 = fmul float %0, 2.000000e+00               
  %25 = fadd float %24, %x.0                      
  %26 = fmul float %0, 3.000000e+00               
  %27 = fadd float %26, %x.0                      
  %28 = insertelement <4 x float> undef, float %22, i32 0 
  %29 = insertelement <4 x float> %28, float %23, i32 1 
  %30 = insertelement <4 x float> %29, float %25, i32 2 
  %31 = insertelement <4 x float> %30, float %27, i32 3 
  %asmtmp.i = call <4 x float> asm "movss $1, $0\09\0Apshufd $$0, $0, $0", "=x,*m,~{dirflag},~{fpsr},~{flags}"(float* %times4) nounwind 
  %32 = fadd <4 x float> %31, %asmtmp.i           
  %33 = fadd <4 x float> %32, %asmtmp.i           
  %34 = fadd <4 x float> %33, %asmtmp.i           
  %asmtmp.i18 = call <4 x float> asm "movss $1, $0\09\0Apshufd $$0, $0, $0", "=x,*m,~{dirflag},~{fpsr},~{flags}"(float* %timesN) nounwind 
  %35 = icmp sgt i64 %N_addr.0, 15                
  br i1 %3, label %bb6.preheader, label %bb8

bb6.preheader:                                    
  br i1 %35, label %bb.nph43, label %bb7

bb.nph43:                                         
  %tmp108 = add i64 %14, 16                       
  %tmp111 = add i64 %14, 4                        
  %tmp115 = add i64 %14, 8                        
  %tmp119 = add i64 %14, 12                       
  %tmp134 = add i64 %N, -16                       
  %tmp135 = sub i64 %tmp134, %14                  
  call void asm sideeffect "# Start.", "~{dirflag},~{fpsr},~{flags}"() nounwind
  br label %bb5

bb5:                                              
  %indvar102 = phi i64 [ 0, %bb.nph43 ], [ %indvar.next103, %bb5 ] 
  %vX3.041 = phi <4 x float> [ %34, %bb.nph43 ], [ %45, %bb5 ] 
  %vX0.039 = phi <4 x float> [ %31, %bb.nph43 ], [ %41, %bb5 ] 
  %vX2.037 = phi <4 x float> [ %33, %bb.nph43 ], [ %46, %bb5 ] 
  %vX1.036 = phi <4 x float> [ %32, %bb.nph43 ], [ %47, %bb5 ] 
  %tmp104 = shl i64 %indvar102, 4                 
  %tmp105 = add i64 %14, %tmp104                  
  %scevgep106 = getelementptr float, float* %I, i64 %tmp105 
  %scevgep106107 = bitcast float* %scevgep106 to <4 x float>* 
  %tmp109 = add i64 %tmp108, %tmp104              
  %tmp112 = add i64 %tmp111, %tmp104              
  %scevgep113 = getelementptr float, float* %I, i64 %tmp112 
  %scevgep113114 = bitcast float* %scevgep113 to <4 x float>* 
  %tmp116 = add i64 %tmp115, %tmp104              
  %scevgep117 = getelementptr float, float* %I, i64 %tmp116 
  %scevgep117118 = bitcast float* %scevgep117 to <4 x float>* 
  %tmp120 = add i64 %tmp119, %tmp104              
  %scevgep121 = getelementptr float, float* %I, i64 %tmp120 
  %scevgep121122 = bitcast float* %scevgep121 to <4 x float>* 
  %scevgep123 = getelementptr float, float* %O, i64 %tmp105 
  %scevgep123124 = bitcast float* %scevgep123 to <4 x float>* 
  %scevgep126 = getelementptr float, float* %O, i64 %tmp112 
  %scevgep126127 = bitcast float* %scevgep126 to <4 x float>* 
  %scevgep128 = getelementptr float, float* %O, i64 %tmp116 
  %scevgep128129 = bitcast float* %scevgep128 to <4 x float>* 
  %scevgep130 = getelementptr float, float* %O, i64 %tmp120 
  %scevgep130131 = bitcast float* %scevgep130 to <4 x float>* 
  %tmp132 = mul i64 %indvar102, -16               
  %tmp136 = add i64 %tmp135, %tmp132              
  %36 = load <4 x float>, <4 x float>* %scevgep106107, align 16 
  %37 = load <4 x float>, <4 x float>* %scevgep113114, align 16 
  %38 = load <4 x float>, <4 x float>* %scevgep117118, align 16 
  %39 = load <4 x float>, <4 x float>* %scevgep121122, align 16 
  %40 = fmul <4 x float> %36, %vX0.039            
  %41 = fadd <4 x float> %vX0.039, %asmtmp.i18    
  %42 = fmul <4 x float> %37, %vX1.036            
  %43 = fmul <4 x float> %38, %vX2.037            
  %44 = fmul <4 x float> %39, %vX3.041            
  store <4 x float> %40, <4 x float>* %scevgep123124, align 16
  store <4 x float> %42, <4 x float>* %scevgep126127, align 16
  store <4 x float> %43, <4 x float>* %scevgep128129, align 16
  store <4 x float> %44, <4 x float>* %scevgep130131, align 16
  %45 = fadd <4 x float> %vX3.041, %asmtmp.i18    
  %46 = fadd <4 x float> %vX2.037, %asmtmp.i18    
  %47 = fadd <4 x float> %vX1.036, %asmtmp.i18    
  %48 = icmp sgt i64 %tmp136, 15                  
  %indvar.next103 = add i64 %indvar102, 1         
  br i1 %48, label %bb5, label %bb6.bb7_crit_edge

bb6.bb7_crit_edge:                                
  call void asm sideeffect "# Stop.", "~{dirflag},~{fpsr},~{flags}"() nounwind
  %scevgep110 = getelementptr float, float* %I, i64 %tmp109 
  %scevgep125 = getelementptr float, float* %O, i64 %tmp109 
  br label %bb7

bb7:                                              
  %I_addr.1.lcssa = phi float* [ %scevgep110, %bb6.bb7_crit_edge ], [ %I_addr.0, %bb6.preheader ] 
  %O_addr.1.lcssa = phi float* [ %scevgep125, %bb6.bb7_crit_edge ], [ %O_addr.0, %bb6.preheader ] 
  %vX0.0.lcssa = phi <4 x float> [ %41, %bb6.bb7_crit_edge ], [ %31, %bb6.preheader ] 
  %N_addr.1.lcssa = phi i64 [ %tmp136, %bb6.bb7_crit_edge ], [ %N_addr.0, %bb6.preheader ] 
  %asmtmp.i17 = call <4 x float> asm "movss $1, $0\09\0Apshufd $$0, $0, $0", "=x,*m,~{dirflag},~{fpsr},~{flags}"(float* %times4) nounwind 
  br label %bb11

bb8:                                              
  br i1 %35, label %bb.nph, label %bb11

bb.nph:                                           
  %I_addr.0.sum = add i64 %14, -1                 
  %49 = getelementptr inbounds float, float* %I, i64 %I_addr.0.sum 
  %50 = bitcast float* %49 to <4 x float>*        
  %51 = load <4 x float>, <4 x float>* %50, align 16           
  %tmp54 = add i64 %14, 16                        
  %tmp56 = add i64 %14, 3                         
  %tmp60 = add i64 %14, 7                         
  %tmp64 = add i64 %14, 11                        
  %tmp68 = add i64 %14, 15                        
  %tmp76 = add i64 %14, 4                         
  %tmp80 = add i64 %14, 8                         
  %tmp84 = add i64 %14, 12                        
  %tmp90 = add i64 %N, -16                        
  %tmp91 = sub i64 %tmp90, %14                    
  br label %bb9

bb9:                                              
  %indvar = phi i64 [ 0, %bb.nph ], [ %indvar.next, %bb9 ] 
  %vX3.125 = phi <4 x float> [ %34, %bb.nph ], [ %69, %bb9 ] 
  %vX0.223 = phi <4 x float> [ %31, %bb.nph ], [ %65, %bb9 ] 
  %vX2.121 = phi <4 x float> [ %33, %bb.nph ], [ %70, %bb9 ] 
  %vX1.120 = phi <4 x float> [ %32, %bb.nph ], [ %71, %bb9 ] 
  %vI0.019 = phi <4 x float> [ %51, %bb.nph ], [ %55, %bb9 ] 
  %tmp51 = shl i64 %indvar, 4                     
  %tmp55 = add i64 %tmp54, %tmp51                 
  %tmp57 = add i64 %tmp56, %tmp51                 
  %scevgep58 = getelementptr float, float* %I, i64 %tmp57 
  %scevgep5859 = bitcast float* %scevgep58 to <4 x float>* 
  %tmp61 = add i64 %tmp60, %tmp51                 
  %scevgep62 = getelementptr float, float* %I, i64 %tmp61 
  %scevgep6263 = bitcast float* %scevgep62 to <4 x float>* 
  %tmp65 = add i64 %tmp64, %tmp51                 
  %scevgep66 = getelementptr float, float* %I, i64 %tmp65 
  %scevgep6667 = bitcast float* %scevgep66 to <4 x float>* 
  %tmp69 = add i64 %tmp68, %tmp51                 
  %scevgep70 = getelementptr float, float* %I, i64 %tmp69 
  %scevgep7071 = bitcast float* %scevgep70 to <4 x float>* 
  %tmp72 = add i64 %14, %tmp51                    
  %scevgep73 = getelementptr float, float* %O, i64 %tmp72 
  %scevgep7374 = bitcast float* %scevgep73 to <4 x float>* 
  %tmp77 = add i64 %tmp76, %tmp51                 
  %scevgep78 = getelementptr float, float* %O, i64 %tmp77 
  %scevgep7879 = bitcast float* %scevgep78 to <4 x float>* 
  %tmp81 = add i64 %tmp80, %tmp51                 
  %scevgep82 = getelementptr float, float* %O, i64 %tmp81 
  %scevgep8283 = bitcast float* %scevgep82 to <4 x float>* 
  %tmp85 = add i64 %tmp84, %tmp51                 
  %scevgep86 = getelementptr float, float* %O, i64 %tmp85 
  %scevgep8687 = bitcast float* %scevgep86 to <4 x float>* 
  %tmp88 = mul i64 %indvar, -16                   
  %tmp92 = add i64 %tmp91, %tmp88                 
  %52 = load <4 x float>, <4 x float>* %scevgep5859, align 16  
  %53 = load <4 x float>, <4 x float>* %scevgep6263, align 16  
  %54 = load <4 x float>, <4 x float>* %scevgep6667, align 16  
  %55 = load <4 x float>, <4 x float>* %scevgep7071, align 16  
  %56 = shufflevector <4 x float> %vI0.019, <4 x float> %52, <4 x i32> <i32 4, i32 1, i32 2, i32 3> 
  %57 = shufflevector <4 x float> %56, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0> 
  %58 = shufflevector <4 x float> %52, <4 x float> %53, <4 x i32> <i32 4, i32 1, i32 2, i32 3> 
  %59 = shufflevector <4 x float> %58, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0> 
  %60 = shufflevector <4 x float> %53, <4 x float> %54, <4 x i32> <i32 4, i32 1, i32 2, i32 3> 
  %61 = shufflevector <4 x float> %60, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0> 
  %62 = shufflevector <4 x float> %54, <4 x float> %55, <4 x i32> <i32 4, i32 1, i32 2, i32 3> 
  %63 = shufflevector <4 x float> %62, <4 x float> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0> 
  %64 = fmul <4 x float> %57, %vX0.223            
  %65 = fadd <4 x float> %vX0.223, %asmtmp.i18    
  %66 = fmul <4 x float> %59, %vX1.120            
  %67 = fmul <4 x float> %61, %vX2.121            
  %68 = fmul <4 x float> %63, %vX3.125            
  store <4 x float> %64, <4 x float>* %scevgep7374, align 16
  store <4 x float> %66, <4 x float>* %scevgep7879, align 16
  store <4 x float> %67, <4 x float>* %scevgep8283, align 16
  store <4 x float> %68, <4 x float>* %scevgep8687, align 16
  %69 = fadd <4 x float> %vX3.125, %asmtmp.i18    
  %70 = fadd <4 x float> %vX2.121, %asmtmp.i18    
  %71 = fadd <4 x float> %vX1.120, %asmtmp.i18    
  %72 = icmp sgt i64 %tmp92, 15                   
  %indvar.next = add i64 %indvar, 1               
  br i1 %72, label %bb9, label %bb10.bb11.loopexit_crit_edge

bb10.bb11.loopexit_crit_edge:                     
  %scevgep = getelementptr float, float* %I, i64 %tmp55  
  %scevgep75 = getelementptr float, float* %O, i64 %tmp55 
  br label %bb11

bb11:                                             
  %N_addr.2 = phi i64 [ %N_addr.1.lcssa, %bb7 ], [ %tmp92, %bb10.bb11.loopexit_crit_edge ], [ %N_addr.0, %bb8 ] 
  %vX0.1 = phi <4 x float> [ %vX0.0.lcssa, %bb7 ], [ %65, %bb10.bb11.loopexit_crit_edge ], [ %31, %bb8 ] 
  %O_addr.2 = phi float* [ %O_addr.1.lcssa, %bb7 ], [ %scevgep75, %bb10.bb11.loopexit_crit_edge ], [ %O_addr.0, %bb8 ] 
  %I_addr.2 = phi float* [ %I_addr.1.lcssa, %bb7 ], [ %scevgep, %bb10.bb11.loopexit_crit_edge ], [ %I_addr.0, %bb8 ] 
  %73 = extractelement <4 x float> %vX0.1, i32 0  
  %74 = icmp sgt i64 %N_addr.2, 0                 
  br i1 %74, label %bb12, label %bb14

bb12:                                             
  %indvar94 = phi i64 [ %indvar.next95, %bb12 ], [ 0, %bb11 ] 
  %x.130 = phi float [ %77, %bb12 ], [ %73, %bb11 ] 
  %I_addr.433 = getelementptr float, float* %I_addr.2, i64 %indvar94 
  %O_addr.432 = getelementptr float, float* %O_addr.2, i64 %indvar94 
  %75 = load float, float* %I_addr.433, align 4          
  %76 = fmul float %75, %x.130                    
  store float %76, float* %O_addr.432, align 4
  %77 = fadd float %x.130, %0                     
  %indvar.next95 = add i64 %indvar94, 1           
  %exitcond = icmp eq i64 %indvar.next95, %N_addr.2 
  br i1 %exitcond, label %bb14, label %bb12

bb14:                                             
  %x.1.lcssa = phi float [ %73, %bb11 ], [ %77, %bb12 ] 
  store float %x.1.lcssa, float* %Start, align 4
  ret void

return:                                           
  ret void
}



define void @bar(i32 %a, i32 %b) nounwind {
entry:                           
  br label %outer

outer:                                     
  %i6 = phi i32 [ %storemerge171, %bb1 ], [ %a, %entry ] 
  %storemerge171 = add i32 %i6, 1      
  br label %inner

inner:                                       
  %i8 = phi i32 [ %a, %outer ], [ %indvar.next159, %bb0 ] 
  %t338 = load i32, i32* undef                     
  %t191 = mul i32 %i8, %t338        
  %t179 = add i32 %i6, %t191        
  br label %bb0

bb0:                                     
  %indvar.next159 = add i32 %i8, 1     
  br i1 undef, label %bb1, label %inner

bb1:                                     
  %midx.4 = phi i32 [ %t179, %bb0 ] 
  br label %outer
}
