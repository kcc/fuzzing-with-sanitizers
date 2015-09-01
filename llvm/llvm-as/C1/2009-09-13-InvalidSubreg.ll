

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "armv7-eabi"

%struct.fr = type { [6 x %struct.pl] }
%struct.obb = type { %"struct.m4", %"struct.p3" }
%struct.pl = type { %"struct.p3" }
%"struct.m4" = type { %"struct.p3", %"struct.p3", %"struct.p3", %"struct.p3" }
%"struct.p3" = type { <4 x float> }

declare <2 x float> @llvm.arm.neon.vpadd.v2f32(<2 x float>, <2 x float>) nounwind readnone

define arm_aapcs_vfpcc i8 @foo(%struct.fr* nocapture %this, %struct.obb* %box) nounwind {
entry:
  %val.i.i = load <4 x float>, <4 x float>* undef              
  %val2.i.i = load <4 x float>, <4 x float>* null              
  %elt3.i.i = getelementptr inbounds %struct.obb, %struct.obb* %box, i32 0, i32 0, i32 2, i32 0 
  %val4.i.i = load <4 x float>, <4 x float>* %elt3.i.i         
  %0 = shufflevector <2 x float> undef, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3> 
  %1 = fadd <4 x float> undef, zeroinitializer    
  br label %bb33

bb:                                               
  %2 = fmul <4 x float> %val.i.i, undef           
  %3 = fmul <4 x float> %val2.i.i, undef          
  %4 = fadd <4 x float> %3, %2                    
  %5 = fmul <4 x float> %val4.i.i, undef          
  %6 = fadd <4 x float> %5, %4                    
  %7 = bitcast <4 x float> %6 to <4 x i32>        
  %8 = and <4 x i32> %7, <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648> 
  %9 = or <4 x i32> %8, undef                     
  %10 = bitcast <4 x i32> %9 to <4 x float>       
  %11 = shufflevector <4 x float> %10, <4 x float> undef, <2 x i32> <i32 0, i32 1> 
  %12 = shufflevector <2 x float> %11, <2 x float> undef, <4 x i32> zeroinitializer 
  %13 = fmul <4 x float> undef, %12               
  %14 = fmul <4 x float> %0, undef                
  %15 = fadd <4 x float> %14, %13                 
  %16 = fadd <4 x float> undef, %15               
  %17 = fadd <4 x float> %1, %16                  
  %18 = fmul <4 x float> zeroinitializer, %17     
  %19 = insertelement <4 x float> %18, float 0.000000e+00, i32 3 
  %20 = shufflevector <4 x float> %19, <4 x float> undef, <2 x i32> <i32 0, i32 1> 
  %21 = shufflevector <4 x float> %19, <4 x float> undef, <2 x i32> <i32 2, i32 3> 
  %22 = tail call <2 x float> @llvm.arm.neon.vpadd.v2f32(<2 x float> %20, <2 x float> %21) nounwind 
  %23 = tail call <2 x float> @llvm.arm.neon.vpadd.v2f32(<2 x float> %22, <2 x float> %22) nounwind 
  %24 = shufflevector <2 x float> %23, <2 x float> %23, <4 x i32> zeroinitializer 
  %25 = fadd <4 x float> %24, zeroinitializer     
  %tmp46 = extractelement <4 x float> %25, i32 0  
  %26 = fcmp olt float %tmp46, 0.000000e+00       
  br i1 %26, label %bb41, label %bb33

bb33:                                             
  br i1 undef, label %bb34, label %bb

bb34:                                             
  ret i8 undef

bb41:                                             
  ret i8 1
}
