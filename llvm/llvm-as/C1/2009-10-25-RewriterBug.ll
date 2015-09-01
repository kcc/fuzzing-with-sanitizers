

%struct.DecRefPicMarking_t = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_t* }
%struct.FrameStore = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.StorablePicture*, %struct.StorablePicture*, %struct.StorablePicture* }
%struct.StorablePicture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.StorablePicture*, %struct.StorablePicture*, %struct.StorablePicture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_t*, i32 }

define fastcc void @insert_picture_in_dpb(%struct.FrameStore* nocapture %fs, %struct.StorablePicture* %p) nounwind ssp {
entry:
  %0 = getelementptr inbounds %struct.FrameStore, %struct.FrameStore* %fs, i64 0, i32 12 
  %1 = icmp eq i32 undef, 0                       
  br i1 %1, label %bb.i, label %bb36.i

bb.i:                                             
  br i1 undef, label %bb3.i, label %bb14.preheader.i

bb3.i:                                            
  unreachable

bb14.preheader.i:                                 
  br i1 undef, label %bb9.i, label %bb20.preheader.i

bb9.i:                                            
  br i1 undef, label %bb9.i, label %bb20.preheader.i

bb20.preheader.i:                                 
  br i1 undef, label %bb18.i, label %bb29.preheader.i

bb18.i:                                           
  unreachable

bb29.preheader.i:                                 
  br i1 undef, label %bb24.i, label %bb30.i

bb24.i:                                           
  unreachable

bb30.i:                                           
  store i32 undef, i32* undef, align 8
  br label %bb67.preheader.i

bb36.i:                                           
  br label %bb67.preheader.i

bb67.preheader.i:                                 
  %2 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %3 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %4 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %5 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %6 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %7 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %8 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %9 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %10 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %11 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  %12 = phi %struct.StorablePicture* [ null, %bb36.i ], [ undef, %bb30.i ] 
  br i1 undef, label %bb38.i, label %bb68.i

bb38.i:                                           
  %13 = phi %struct.StorablePicture* [ %37, %bb66.i ], [ %2, %bb67.preheader.i ] 
  %14 = phi %struct.StorablePicture* [ %38, %bb66.i ], [ %3, %bb67.preheader.i ] 
  %15 = phi %struct.StorablePicture* [ %39, %bb66.i ], [ %4, %bb67.preheader.i ] 
  %16 = phi %struct.StorablePicture* [ %40, %bb66.i ], [ %5, %bb67.preheader.i ] 
  %17 = phi %struct.StorablePicture* [ %40, %bb66.i ], [ %6, %bb67.preheader.i ] 
  %18 = phi %struct.StorablePicture* [ %40, %bb66.i ], [ %7, %bb67.preheader.i ] 
  %19 = phi %struct.StorablePicture* [ %40, %bb66.i ], [ %8, %bb67.preheader.i ] 
  %20 = phi %struct.StorablePicture* [ %40, %bb66.i ], [ %9, %bb67.preheader.i ] 
  %21 = phi %struct.StorablePicture* [ %40, %bb66.i ], [ %10, %bb67.preheader.i ] 
  %22 = phi %struct.StorablePicture* [ %40, %bb66.i ], [ %11, %bb67.preheader.i ] 
  %23 = phi %struct.StorablePicture* [ %40, %bb66.i ], [ %12, %bb67.preheader.i ] 
  %indvar248.i = phi i64 [ %indvar.next249.i, %bb66.i ], [ 0, %bb67.preheader.i ] 
  %storemerge52.i = trunc i64 %indvar248.i to i32 
  %24 = getelementptr inbounds %struct.StorablePicture, %struct.StorablePicture* %23, i64 0, i32 19 
  br i1 undef, label %bb.nph51.i, label %bb66.i

bb.nph51.i:                                       
  %25 = sdiv i32 %storemerge52.i, 8               
  br label %bb39.i

bb39.i:                                           
  %26 = phi %struct.StorablePicture* [ %17, %bb.nph51.i ], [ null, %bb64.i ] 
  %27 = phi %struct.StorablePicture* [ %18, %bb.nph51.i ], [ null, %bb64.i ] 
  %28 = phi %struct.StorablePicture* [ %19, %bb.nph51.i ], [ null, %bb64.i ] 
  %29 = phi %struct.StorablePicture* [ %20, %bb.nph51.i ], [ null, %bb64.i ] 
  %30 = phi %struct.StorablePicture* [ %21, %bb.nph51.i ], [ null, %bb64.i ] 
  %31 = phi %struct.StorablePicture* [ %22, %bb.nph51.i ], [ null, %bb64.i ] 
  br i1 undef, label %bb57.i, label %bb40.i

bb40.i:                                           
  br i1 undef, label %bb57.i, label %bb41.i

bb41.i:                                           
  %storemerge10.i = select i1 undef, i32 2, i32 4 
  %32 = zext i32 %storemerge10.i to i64           
  br i1 undef, label %bb45.i, label %bb47.i

bb45.i:                                           
  %33 = getelementptr inbounds %struct.StorablePicture, %struct.StorablePicture* %26, i64 0, i32 5, i64 undef, i64 %32, i64 undef 
  %34 = load i64, i64* %33, align 8                    
  br label %bb47.i

bb47.i:                                           
  %storemerge11.i = phi i64 [ %34, %bb45.i ], [ 0, %bb41.i ] 
  %scevgep246.i = getelementptr i64, i64* undef, i64 undef 
  br label %bb64.i

bb57.i:                                           
  br i1 undef, label %bb58.i, label %bb60.i

bb58.i:                                           
  br label %bb60.i

bb60.i:                                           
  %35 = load i64**, i64*** undef, align 8                
  %scevgep256.i = getelementptr i64*, i64** %35, i64 %indvar248.i 
  %36 = load i64*, i64** %scevgep256.i, align 8         
  %scevgep243.i = getelementptr i64, i64* %36, i64 undef 
  store i64 -1, i64* %scevgep243.i, align 8
  br label %bb64.i

bb64.i:                                           
  br i1 undef, label %bb39.i, label %bb66.i

bb66.i:                                           
  %37 = phi %struct.StorablePicture* [ %13, %bb38.i ], [ null, %bb64.i ] 
  %38 = phi %struct.StorablePicture* [ %14, %bb38.i ], [ null, %bb64.i ] 
  %39 = phi %struct.StorablePicture* [ %15, %bb38.i ], [ null, %bb64.i ] 
  %40 = phi %struct.StorablePicture* [ %16, %bb38.i ], [ null, %bb64.i ] 
  %indvar.next249.i = add i64 %indvar248.i, 1     
  br i1 undef, label %bb38.i, label %bb68.i

bb68.i:                                           
  %41 = phi %struct.StorablePicture* [ %2, %bb67.preheader.i ], [ %37, %bb66.i ] 
  %42 = phi %struct.StorablePicture* [ %3, %bb67.preheader.i ], [ %38, %bb66.i ] 
  %43 = phi %struct.StorablePicture* [ %4, %bb67.preheader.i ], [ %39, %bb66.i ] 
  br i1 undef, label %bb.nph48.i, label %bb108.i

bb.nph48.i:                                       
  br label %bb80.i

bb80.i:                                           
  %44 = phi %struct.StorablePicture* [ %42, %bb.nph48.i ], [ null, %bb104.i ] 
  %45 = phi %struct.StorablePicture* [ %43, %bb.nph48.i ], [ null, %bb104.i ] 
  br i1 undef, label %bb.nph39.i, label %bb104.i

bb.nph39.i:                                       
  br label %bb81.i

bb81.i:                                           
  %46 = phi %struct.StorablePicture* [ %44, %bb.nph39.i ], [ %48, %bb102.i ] 
  %47 = phi %struct.StorablePicture* [ %45, %bb.nph39.i ], [ %48, %bb102.i ] 
  br i1 undef, label %bb83.i, label %bb82.i

bb82.i:                                           
  br i1 undef, label %bb83.i, label %bb101.i

bb83.i:                                           
  br label %bb102.i

bb101.i:                                          
  br label %bb102.i

bb102.i:                                          
  %48 = load %struct.StorablePicture*, %struct.StorablePicture** %0, align 8 
  br i1 undef, label %bb81.i, label %bb104.i

bb104.i:                                          
  br label %bb80.i

bb108.i:                                          
  unreachable
}
