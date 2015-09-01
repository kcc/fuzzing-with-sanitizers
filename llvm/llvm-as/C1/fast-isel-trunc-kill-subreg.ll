

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-unknown"







define i32 @test(i32 %block8x8) {
bb:
  %tmp9 = trunc i32 %block8x8 to i1
  %tmp10 = zext i1 %tmp9 to i32
  %tmp11 = mul i32 %tmp10, 8
  %tmp12 = zext i32 %tmp11 to i64
  br label %bb241

bb241:                                            
  %lsr.iv3 = phi i64 [ %lsr.iv.next4, %bb241 ], [ %tmp12, %bb ]
  %lsr.iv1 = phi i32 [ %lsr.iv.next2, %bb241 ], [ 0, %bb ]
  %lsr.iv.next2 = add nuw nsw i32 %lsr.iv1, 1
  %lsr.iv.next4 = add i64 %lsr.iv3, 32
  %exitcond = icmp eq i32 %lsr.iv.next2, 8
  br i1 %exitcond, label %.preheader.preheader, label %bb241

.preheader.preheader:                             
  %tmp18 = lshr i32 %block8x8, 1
  br label %bb270

bb270:                                            
  %lsr.iv = phi i32 [ %lsr.iv.next, %bb270 ], [ %tmp18, %.preheader.preheader ]
  %lsr.iv.next = add i32 %lsr.iv, 4
  %tmp272 = icmp slt i32 %lsr.iv.next, 100
  br i1 %tmp272, label %bb270, label %.loopexit

.loopexit:                                        
  ret i32 0
}
