




@GV = external global i32                         

define void @t1(i32* nocapture %vals, i32 %c) nounwind {
entry:



  %0 = icmp eq i32 %c, 0                          
  br i1 %0, label %return, label %bb.nph

bb.nph:                                           















  %.pre = load i32, i32* @GV, align 4                  
  br label %bb

bb:                                               
  %1 = phi i32 [ %.pre, %bb.nph ], [ %3, %bb ]    
  %i.03 = phi i32 [ 0, %bb.nph ], [ %4, %bb ]     
  %scevgep = getelementptr i32, i32* %vals, i32 %i.03  
  %2 = load i32, i32* %scevgep, align 4                
  %3 = add nsw i32 %1, %2                         
  store i32 %3, i32* @GV, align 4
  %4 = add i32 %i.03, 1                           
  %exitcond = icmp eq i32 %4, %c                  
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret void
}


define void @t2(i8* %ptr1, i8* %ptr2) nounwind {
entry:


  br i1 undef, label %bb1, label %bb2

bb1:

  %indvar = phi i32 [ %indvar.next, %bb1 ], [ 0, %entry ]
  %tmp1 = shl i32 %indvar, 2
  %gep1 = getelementptr i8, i8* %ptr1, i32 %tmp1
  %tmp2 = call <4 x float> @llvm.arm.neon.vld1.v4f32(i8* %gep1, i32 1)
  %tmp3 = call <4 x float> @llvm.arm.neon.vmaxs.v4f32(<4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float> %tmp2)
  %gep2 = getelementptr i8, i8* %ptr2, i32 %tmp1
  call void @llvm.arm.neon.vst1.v4f32(i8* %gep2, <4 x float> %tmp3, i32 1)
  %indvar.next = add i32 %indvar, 1
  %cond = icmp eq i32 %indvar.next, 10
  br i1 %cond, label %bb2, label %bb1

bb2:
  ret void
}



declare <4 x float> @llvm.arm.neon.vld1.v4f32(i8*, i32) nounwind readonly

declare void @llvm.arm.neon.vst1.v4f32(i8*, <4 x float>, i32) nounwind

declare <4 x float> @llvm.arm.neon.vmaxs.v4f32(<4 x float>, <4 x float>) nounwind readnone



define zeroext i16 @t3(i8 zeroext %data, i16 zeroext %crc) nounwind readnone {

bb.nph:






  br label %bb

bb:                                               





  %data_addr.013 = phi i8 [ %data, %bb.nph ], [ %8, %bb ] 
  %crc_addr.112 = phi i16 [ %crc, %bb.nph ], [ %crc_addr.2, %bb ] 
  %i.011 = phi i8 [ 0, %bb.nph ], [ %7, %bb ]     
  %0 = trunc i16 %crc_addr.112 to i8              
  %1 = xor i8 %data_addr.013, %0                  
  %2 = and i8 %1, 1                               
  %3 = icmp eq i8 %2, 0                           
  %4 = xor i16 %crc_addr.112, 16386               
  %crc_addr.0 = select i1 %3, i16 %crc_addr.112, i16 %4 
  %5 = lshr i16 %crc_addr.0, 1                    
  %6 = or i16 %5, -32768                          
  %crc_addr.2 = select i1 %3, i16 %5, i16 %6      
  %7 = add i8 %i.011, 1                           
  %8 = lshr i8 %data_addr.013, 1                  
  %exitcond = icmp eq i8 %7, 8                    
  br i1 %exitcond, label %bb8, label %bb

bb8:                                              
  ret i16 %crc_addr.2
}
