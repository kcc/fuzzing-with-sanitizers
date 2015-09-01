

target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32-n32"
target triple = "thumbv7-apple-darwin10"


define arm_apcscc void @NEON_vst4q_u32(i32* nocapture %sp0, i32* nocapture %sp1, i32* nocapture %sp2, i32* nocapture %sp3, i32* %dp) nounwind {
entry:
  %0 = bitcast i32* %sp0 to <4 x i32>*            
  %1 = load <4 x i32>, <4 x i32>* %0, align 16               
  %2 = bitcast i32* %sp1 to <4 x i32>*            
  %3 = load <4 x i32>, <4 x i32>* %2, align 16               
  %4 = bitcast i32* %sp2 to <4 x i32>*            
  %5 = load <4 x i32>, <4 x i32>* %4, align 16               
  %6 = bitcast i32* %sp3 to <4 x i32>*            
  %7 = load <4 x i32>, <4 x i32>* %6, align 16               
  %8 = bitcast i32* %dp to i8*                    
  tail call void @llvm.arm.neon.vst4.v4i32(i8* %8, <4 x i32> %1, <4 x i32> %3, <4 x i32> %5, <4 x i32> %7, i32 1)
  ret void
}

declare void @llvm.arm.neon.vst4.v4i32(i8*, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, i32) nounwind

@sbuf = common global [16 x i32] zeroinitializer, align 16 
@dbuf = common global [16 x i32] zeroinitializer  



define arm_apcscc i32 @main() nounwind {
bb.nph:
  br label %bb

bb:                                               
  %0 = phi i32 [ 0, %bb.nph ], [ %1, %bb ]        
  %scevgep = getelementptr [16 x i32], [16 x i32]* @sbuf, i32 0, i32 %0 
  %scevgep5 = getelementptr [16 x i32], [16 x i32]* @dbuf, i32 0, i32 %0 
  store i32 %0, i32* %scevgep, align 4
  store i32 -1, i32* %scevgep5, align 4
  %1 = add nsw i32 %0, 1                          
  %exitcond = icmp eq i32 %1, 16                  
  br i1 %exitcond, label %bb2, label %bb

bb2:                                              
  %2 = load <4 x i32>, <4 x i32>* bitcast ([16 x i32]* @sbuf to <4 x i32>*), align 16 
  %3 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32], [16 x i32]* @sbuf, i32 0, i32 4) to <4 x i32>*), align 16 
  %4 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32], [16 x i32]* @sbuf, i32 0, i32 8) to <4 x i32>*), align 16 
  %5 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32], [16 x i32]* @sbuf, i32 0, i32 12) to <4 x i32>*), align 16 
  tail call void @llvm.arm.neon.vst4.v4i32(i8* bitcast ([16 x i32]* @dbuf to i8*), <4 x i32> %2, <4 x i32> %3, <4 x i32> %4, <4 x i32> %5, i32 1) nounwind
  ret i32 0
}



define void @pr12389(i8* %p) nounwind ssp {
entry:
  %vld1 = tail call <4 x float> @llvm.arm.neon.vld1.v4f32(i8* %p, i32 1)
  tail call void asm sideeffect "", "~{q0},~{q1},~{q2},~{q3},~{q4},~{q5},~{q6},~{q7},~{q8},~{q9},~{q10},~{q11},~{q12},~{q13},~{q14},~{q15}"() nounwind
  tail call void @llvm.arm.neon.vst1.v4f32(i8* %p, <4 x float> %vld1, i32 1)
  ret void
}

declare <4 x float> @llvm.arm.neon.vld1.v4f32(i8*, i32) nounwind readonly

declare void @llvm.arm.neon.vst1.v4f32(i8*, <4 x float>, i32) nounwind





%class = type { i8*, %class*, i32 }
define void @f11101911(%class* %this, i32 %num) ssp align 2 {
entry:
  %p1 = getelementptr inbounds %class, %class* %this, i32 0, i32 1
  %p2 = getelementptr inbounds %class, %class* %this, i32 0, i32 2
  tail call void asm sideeffect "", "~{r1},~{r3},~{r5},~{r11},~{r13}"() nounwind
  store %class* %this, %class** %p1, align 4
  store i32 %num, i32* %p2, align 4
  ret void
}



define void @rdar13249625(double* nocapture %p) nounwind {
  %1 = tail call double asm sideeffect "@ $0", "=w,~{d0},~{q1},~{q2},~{q3},~{q4},~{q5},~{q6},~{q7},~{q8},~{q9},~{q10},~{q11},~{q12},~{q13},~{q14},~{q15}"() nounwind
  store double %1, double* %p, align 4
  ret void
}
