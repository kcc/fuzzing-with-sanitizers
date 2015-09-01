




%struct.device_dma_parameters = type { i32, i32 }
%struct.iovec = type { i8*, i32 }

define i32 @generic_segment_checks(%struct.iovec* nocapture %iov, i32* nocapture %nr_segs, i32* nocapture %count, i32 %access_flags) nounwind optsize {
entry:
  br label %bb8

bb:                                               
  br i1 undef, label %bb10, label %bb2

bb2:                                              
  %asmtmp = tail call %struct.device_dma_parameters asm "adds $1, $2, $3
  %asmresult = extractvalue %struct.device_dma_parameters %asmtmp, 0
  %0 = icmp eq i32 %asmresult, 0                  
  br i1 %0, label %bb7, label %bb4

bb4:                                              
  br i1 undef, label %bb10, label %bb9

bb7:                                              
  %1 = add i32 %2, 1                              
  br label %bb8

bb8:                                              
  %2 = phi i32 [ 0, %entry ], [ %1, %bb7 ]        
  %scevgep22 = getelementptr %struct.iovec, %struct.iovec* %iov, i32 %2, i32 0
  %3 = load i32, i32* %nr_segs, align 4                
  %4 = icmp ult i32 %2, %3                        
  br i1 %4, label %bb, label %bb9

bb9:                                              
  store i32 undef, i32* %count, align 4
  ret i32 0

bb10:                                             
  ret i32 0
}
