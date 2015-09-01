






%struct.FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.epoch_t = type { %struct.trans_t*, %struct.trans_t*, i32, i32, i32, i32, i32 }
%struct.trans_t = type { i32, i32, i32, i8* }

@.str12 = external constant [2 x i8], align 1     
@.str19 = external constant [7 x i8], align 1     
@.str24 = external constant [4 x i8], align 1     

define i32 @t1(i32 %c, i8** nocapture %v) nounwind ssp {

entry:
  br i1 undef, label %bb, label %bb3

bb:                                               
  unreachable

bb3:                                              
  br i1 undef, label %bb.i, label %bb.nph41

bb.i:                                             
  unreachable

bb.nph41:                                         
  %0 = call %struct.FILE* @"\01_fopen$UNIX2003"(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str12, i32 0, i32 0)) nounwind 
  br i1 undef, label %bb4, label %bb5.preheader

bb5.preheader:                                    
  br label %bb5

bb4:                                              
  unreachable

bb5:                                              
  br i1 undef, label %bb7, label %bb5

bb7:                                              
  br i1 undef, label %bb9, label %bb12

bb9:                                              
  unreachable

bb12:                                             
  br i1 undef, label %bb16, label %bb22

bb16:                                             
  unreachable

bb22:                                             
  br label %bb.i1

bb.i1:                                            
  %1 = icmp eq i8 undef, 69                       
  br i1 %1, label %imix_test.exit, label %bb.i1

imix_test.exit:                                   
  br i1 undef, label %bb23, label %bb26.preheader

bb26.preheader:                                   
  br i1 undef, label %bb28, label %bb30

bb23:                                             
  unreachable







bb28:                                             
  %counter.035 = phi i32 [ %3, %bb28 ], [ 0, %bb26.preheader ] 
  %tmp56 = shl i32 %counter.035, 2                
  %2 = call i8* @fgets(i8* undef, i32 50, %struct.FILE* %0) nounwind 
  %3 = add nsw i32 %counter.035, 1                
  %4 = call i32 @feof(%struct.FILE* %0) nounwind  
  br label %bb28

bb30:                                             
  %5 = call i32 @strcmp(i8* undef, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str19, i32 0, i32 0)) nounwind readonly 
  br i1 undef, label %bb34, label %bb70

bb32.loopexit:                                    
  %6 = icmp eq i32 undef, 0                       
  %indvar.next55 = add i32 %indvar54, 1           
  br i1 %6, label %bb34, label %bb70

bb34:                                             
  %indvar54 = phi i32 [ %indvar.next55, %bb32.loopexit ], [ 0, %bb30 ] 
  br i1 false, label %bb35, label %bb39.preheader

bb35:                                             
  unreachable

bb39.preheader:                                   
  %7 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* undef, i32 %indvar54, i32 3 
  %8 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* undef, i32 %indvar54, i32 2 
  br i1 false, label %bb42, label %bb45

bb42:                                             
  unreachable

bb45:                                             
  %9 = call i32 @strcmp(i8* undef, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str24, i32 0, i32 0)) nounwind readonly 
  br i1 false, label %bb47, label %bb32.loopexit

bb47:                                             
  %10 = load i32, i32* %7, align 4                     
  unreachable

bb70:                                             
  br i1 undef, label %bb78, label %bb76

bb76:                                             
  unreachable

bb78:                                             
  br i1 undef, label %bb83, label %bb79

bb79:                                             
  unreachable

bb83:                                             
  call void @rewind(%struct.FILE* %0) nounwind
  unreachable
}

declare %struct.FILE* @"\01_fopen$UNIX2003"(i8*, i8*)

declare i8* @fgets(i8*, i32, %struct.FILE* nocapture) nounwind

declare void @rewind(%struct.FILE* nocapture) nounwind

declare i32 @feof(%struct.FILE* nocapture) nounwind

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

@map_4_to_16 = external constant [16 x i16], align 32 

define void @t2(i8* nocapture %bufp, i8* nocapture %data, i32 %dsize) nounwind ssp {

entry:
  br i1 undef, label %return, label %bb.nph

bb.nph:                                           


  %tmp5 = zext i32 undef to i64                   
  %tmp6 = add i64 %tmp5, 1                        
  %tmp11 = shl i64 undef, 1                       
  %tmp14 = mul i64 undef, 3                       
  br label %bb

bb:                                               
  %tmp9 = mul i64 undef, undef                    
  %tmp12 = add i64 %tmp11, %tmp9                  
  %scevgep13 = getelementptr i8, i8* %bufp, i64 %tmp12 
  %tmp15 = add i64 %tmp14, %tmp9                  
  %scevgep16 = getelementptr i8, i8* %bufp, i64 %tmp15 
  %0 = load i8, i8* undef, align 1                    
  %1 = zext i8 %0 to i32                          
  %2 = getelementptr inbounds [16 x i16], [16 x i16]* @map_4_to_16, i64 0, i64 0 
  %3 = load i16, i16* %2, align 2                      
  %4 = trunc i16 %3 to i8                         
  store i8 %4, i8* undef, align 1
  %5 = and i32 %1, 15                             
  %6 = zext i32 %5 to i64                         
  %7 = getelementptr inbounds [16 x i16], [16 x i16]* @map_4_to_16, i64 0, i64 %6 
  %8 = load i16, i16* %7, align 2                      
  %9 = lshr i16 %8, 8                             
  %10 = trunc i16 %9 to i8                        
  store i8 %10, i8* %scevgep13, align 1
  %11 = trunc i16 %8 to i8                        
  store i8 %11, i8* %scevgep16, align 1
  %exitcond = icmp eq i64 undef, %tmp6            
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret void
}
