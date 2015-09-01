


%union.RtreeCoord = type { float }
%struct.RtreeCell = type { i64, [10 x %union.RtreeCoord] }
%struct.Rtree = type { i32, i32*, i32, i32, i32, i32, i8*, i8* }
%struct.RtreeNode = type { i32*, i64, i32, i32, i8*, i32* }

define fastcc void @nodeOverwriteCell(%struct.Rtree* nocapture %pRtree, %struct.RtreeNode* nocapture %pNode, %struct.RtreeCell* nocapture %pCell, i32 %iCell) nounwind ssp {
entry:
  %0 = load i8*, i8** undef, align 8                   
  %1 = load i32, i32* undef, align 8                   
  %2 = mul i32 %1, %iCell                         
  %3 = add nsw i32 %2, 4                          
  %4 = sext i32 %3 to i64                         
  %5 = load i64, i64* null, align 8                    
  %6 = lshr i64 %5, 48                            
  %7 = trunc i64 %6 to i8                         
  store i8 %7, i8* undef, align 1
  %8 = lshr i64 %5, 8                             
  %9 = trunc i64 %8 to i8                         
  %.sum4 = add i64 %4, 6                          
  %10 = getelementptr inbounds i8, i8* %0, i64 %.sum4 
  store i8 %9, i8* %10, align 1
  %11 = getelementptr inbounds %struct.Rtree, %struct.Rtree* %pRtree, i64 0, i32 3 
  br i1 undef, label %bb.nph, label %bb2

bb.nph:                                           
  %tmp25 = add i64 %4, 11                         
  br label %bb

bb:                                               
  %indvar = phi i64 [ 0, %bb.nph ], [ %indvar.next, %bb ] 
  %scevgep = getelementptr %struct.RtreeCell, %struct.RtreeCell* %pCell, i64 0, i32 1, i64 %indvar 
  %scevgep12 = bitcast %union.RtreeCoord* %scevgep to i32* 
  %tmp = shl i64 %indvar, 2                       
  %tmp26 = add i64 %tmp, %tmp25                   
  %scevgep27 = getelementptr i8, i8* %0, i64 %tmp26   
  %12 = load i32, i32* %scevgep12, align 4             
  %13 = lshr i32 %12, 24                          
  %14 = trunc i32 %13 to i8                       
  store i8 %14, i8* undef, align 1
  store i8 undef, i8* %scevgep27, align 1
  %15 = load i32, i32* %11, align 4                    
  %16 = shl i32 %15, 1                            
  %17 = icmp sgt i32 %16, undef                   
  %indvar.next = add i64 %indvar, 1               
  br i1 %17, label %bb, label %bb2

bb2:                                              
  %18 = getelementptr inbounds %struct.RtreeNode, %struct.RtreeNode* %pNode, i64 0, i32 3 
  store i32 1, i32* %18, align 4
  ret void
}
