


%struct.JVTLib_100487 = type <{ i8 }>

define i32 @_Z13JVTLib_10335613JVTLib_10266513JVTLib_100579S_S_S_jPhj(i16* nocapture %ResidualX_Array.0, %struct.JVTLib_100487* nocapture byval align 4 %xqp, i16* nocapture %ResidualL_Array.0, i16* %ResidualDCZ_Array.0, i16* nocapture %ResidualACZ_FOArray.0, i32 %useFRextDequant, i8* nocapture %JVTLib_103357, i32 %use_field_scan) ssp {
bb.nph:
  %0 = shl i32 undef, 1                           
  %mask133.masked.masked.masked.masked.masked.masked = or i640 undef, undef 
  br label %bb

bb:                                               
  br i1 undef, label %bb2, label %bb1

bb1:                                              
  br i1 undef, label %bb.i, label %bb1.i

bb2:                                              
  unreachable

bb.i:                                             
  br label %_ZL13JVTLib_105204PKsPK13JVTLib_105184PsPhjS5_j.exit

bb1.i:                                            
  br label %_ZL13JVTLib_105204PKsPK13JVTLib_105184PsPhjS5_j.exit

_ZL13JVTLib_105204PKsPK13JVTLib_105184PsPhjS5_j.exit: 
  br i1 undef, label %bb5, label %bb

bb5:                                              
  %mask271.masked.masked.masked.masked.masked.masked.masked = or i256 0, undef 
  %mask266.masked.masked.masked.masked.masked.masked = or i256 %mask271.masked.masked.masked.masked.masked.masked.masked, undef 
  %mask241.masked = or i256 undef, undef          
  %ins237 = or i256 undef, 0                      
  br i1 undef, label %bb9, label %bb10

bb9:                                              
  br i1 undef, label %bb12.i, label %_ZL13JVTLib_105255PKsPK13JVTLib_105184Psj.exit

bb12.i:                                           
  br label %_ZL13JVTLib_105255PKsPK13JVTLib_105184Psj.exit

_ZL13JVTLib_105255PKsPK13JVTLib_105184Psj.exit:   
  ret i32 undef

bb10:                                             
  %1 = sext i16 undef to i32                      
  %2 = sext i16 undef to i32                      
  %3 = sext i16 undef to i32                      
  %4 = sext i16 undef to i32                      
  %5 = sext i16 undef to i32                      
  %6 = sext i16 undef to i32                      
  %tmp211 = lshr i256 %mask271.masked.masked.masked.masked.masked.masked.masked, 112 
  %7 = sext i16 undef to i32                      
  %tmp208 = lshr i256 %mask266.masked.masked.masked.masked.masked.masked, 128 
  %tmp209 = trunc i256 %tmp208 to i16             
  %8 = sext i16 %tmp209 to i32                    
  %9 = sext i16 undef to i32                      
  %10 = sext i16 undef to i32                     
  %tmp193 = lshr i256 %mask241.masked, 208        
  %tmp194 = trunc i256 %tmp193 to i16             
  %11 = sext i16 %tmp194 to i32                   
  %tmp187 = lshr i256 %ins237, 240                
  %tmp188 = trunc i256 %tmp187 to i16             
  %12 = sext i16 %tmp188 to i32                   
  %13 = add nsw i32 %4, %1                        
  %14 = add nsw i32 %5, 0                         
  %15 = add nsw i32 %6, %2                        
  %16 = add nsw i32 %7, %3                        
  %17 = add nsw i32 0, %8                         
  %18 = add nsw i32 %11, %9                       
  %19 = add nsw i32 0, %10                        
  %20 = add nsw i32 %12, 0                        
  %21 = add nsw i32 %17, %13                      
  %22 = add nsw i32 %18, %14                      
  %23 = add nsw i32 %19, %15                      
  %24 = add nsw i32 %20, %16                      
  %25 = add nsw i32 %22, %21                      
  %26 = add nsw i32 %24, %23                      
  %27 = sub i32 %21, %22                          
  %28 = sub i32 %23, %24                          
  %29 = add nsw i32 %26, %25                      
  %30 = sub i32 %25, %26                          
  %31 = sub i32 %27, %28                          
  %32 = ashr i32 %29, 1                           
  %33 = ashr i32 %30, 1                           
  %34 = ashr i32 %31, 1                           
  %35 = icmp sgt i32 %32, 32767                   
  %o0_0.0.i = select i1 %35, i32 32767, i32 %32   
  %36 = icmp slt i32 %o0_0.0.i, -32768            
  %37 = icmp sgt i32 %33, 32767                   
  %o1_0.0.i = select i1 %37, i32 32767, i32 %33   
  %38 = icmp slt i32 %o1_0.0.i, -32768            
  %39 = icmp sgt i32 %34, 32767                   
  %o2_0.0.i = select i1 %39, i32 32767, i32 %34   
  %40 = icmp slt i32 %o2_0.0.i, -32768            
  %tmp101 = lshr i640 %mask133.masked.masked.masked.masked.masked.masked, 256 
  %41 = trunc i32 %o0_0.0.i to i16                
  %tmp358 = select i1 %36, i16 -32768, i16 %41    
  %42 = trunc i32 %o1_0.0.i to i16                
  %tmp347 = select i1 %38, i16 -32768, i16 %42    
  %43 = trunc i32 %o2_0.0.i to i16                
  %tmp335 = select i1 %40, i16 -32768, i16 %43    
  %44 = icmp sgt i16 %tmp358, -1                  
  %..i24 = select i1 %44, i16 %tmp358, i16 undef  
  %45 = icmp sgt i16 %tmp347, -1                  
  %46 = icmp sgt i16 %tmp335, -1                  
  %47 = zext i16 %..i24 to i32                    
  %tmp = trunc i640 %tmp101 to i32                
  %48 = and i32 %tmp, 65535                       
  %49 = mul i32 %47, %48                          
  %50 = zext i16 undef to i32                     
  %51 = mul i32 %50, %48                          
  %52 = add i32 %49, %0                           
  %53 = add i32 %51, %0                           
  %54 = lshr i32 %52, undef                       
  %55 = lshr i32 %53, undef                       
  %56 = trunc i32 %54 to i16                      
  %57 = trunc i32 %55 to i16                      
  %vs16Out0_0.0.i = select i1 %44, i16 %56, i16 undef 
  %vs16Out0_4.0.i = select i1 %45, i16 0, i16 undef 
  %vs16Out1_0.0.i = select i1 %46, i16 %57, i16 undef 
  br i1 undef, label %bb129.i, label %_ZL13JVTLib_105207PKsPK13JVTLib_105184Psj.exit

bb129.i:                                          
  br label %_ZL13JVTLib_105207PKsPK13JVTLib_105184Psj.exit

_ZL13JVTLib_105207PKsPK13JVTLib_105184Psj.exit:   
  %58 = phi i16 [ %vs16Out0_4.0.i, %bb129.i ], [ undef, %bb10 ] 
  %59 = phi i16 [ undef, %bb129.i ], [ %vs16Out1_0.0.i, %bb10 ] 
  store i16 %vs16Out0_0.0.i, i16* %ResidualDCZ_Array.0, align 2
  unreachable
}
