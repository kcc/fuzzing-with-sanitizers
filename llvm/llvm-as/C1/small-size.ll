

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

@b = common global [2048 x i32] zeroinitializer, align 16
@c = common global [2048 x i32] zeroinitializer, align 16
@a = common global [2048 x i32] zeroinitializer, align 16
@G = common global [32 x [1024 x i32]] zeroinitializer, align 16
@ub = common global [1024 x i32] zeroinitializer, align 16
@uc = common global [1024 x i32] zeroinitializer, align 16
@d = common global [2048 x i32] zeroinitializer, align 16
@fa = common global [1024 x float] zeroinitializer, align 16
@fb = common global [1024 x float] zeroinitializer, align 16
@ic = common global [1024 x i32] zeroinitializer, align 16
@da = common global [1024 x float] zeroinitializer, align 16
@db = common global [1024 x float] zeroinitializer, align 16
@dc = common global [1024 x float] zeroinitializer, align 16
@dd = common global [1024 x float] zeroinitializer, align 16
@dj = common global [1024 x i32] zeroinitializer, align 16







define void @example1() optsize {
  br label %1


  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds [2048 x i32], [2048 x i32]* @b, i64 0, i64 %indvars.iv
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds [2048 x i32], [2048 x i32]* @c, i64 0, i64 %indvars.iv
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, %3
  %7 = getelementptr inbounds [2048 x i32], [2048 x i32]* @a, i64 0, i64 %indvars.iv
  store i32 %6, i32* %7, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 256
  br i1 %exitcond, label %8, label %1


  ret void
}





define void @example2(i32 %n, i32 %x) optsize {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph5, label %.preheader

..preheader_crit_edge:                            
  %phitmp = sext i32 %n to i64
  br label %.preheader

.preheader:                                       
  %i.0.lcssa = phi i64 [ %phitmp, %..preheader_crit_edge ], [ 0, %0 ]
  %2 = icmp eq i32 %n, 0
  br i1 %2, label %._crit_edge, label %.lr.ph

.lr.ph5:                                          
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %.lr.ph5 ], [ 0, %0 ]
  %3 = getelementptr inbounds [2048 x i32], [2048 x i32]* @b, i64 0, i64 %indvars.iv6
  store i32 %x, i32* %3, align 4
  %indvars.iv.next7 = add i64 %indvars.iv6, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next7 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %..preheader_crit_edge, label %.lr.ph5

.lr.ph:                                           
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.0.lcssa, %.preheader ]
  %.02 = phi i32 [ %4, %.lr.ph ], [ %n, %.preheader ]
  %4 = add nsw i32 %.02, -1
  %5 = getelementptr inbounds [2048 x i32], [2048 x i32]* @b, i64 0, i64 %indvars.iv
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds [2048 x i32], [2048 x i32]* @c, i64 0, i64 %indvars.iv
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, %6
  %10 = getelementptr inbounds [2048 x i32], [2048 x i32]* @a, i64 0, i64 %indvars.iv
  store i32 %9, i32* %10, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      
  ret void
}





define void @example3(i32 %n, i32* noalias nocapture %p, i32* noalias nocapture %q) optsize {
  %1 = icmp eq i32 %n, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           
  %.05 = phi i32 [ %2, %.lr.ph ], [ %n, %0 ]
  %.014 = phi i32* [ %5, %.lr.ph ], [ %p, %0 ]
  %.023 = phi i32* [ %3, %.lr.ph ], [ %q, %0 ]
  %2 = add nsw i32 %.05, -1
  %3 = getelementptr inbounds i32, i32* %.023, i64 1
  %4 = load i32, i32* %.023, align 16
  %5 = getelementptr inbounds i32, i32* %.014, i64 1
  store i32 %4, i32* %.014, align 16
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      
  ret void
}





define void @example4(i32 %n, i32* noalias nocapture %p, i32* noalias nocapture %q) {
  %1 = icmp eq i32 %n, 0
  br i1 %1, label %._crit_edge, label %.lr.ph, !prof !0

.lr.ph:                                           
  %.05 = phi i32 [ %2, %.lr.ph ], [ %n, %0 ]
  %.014 = phi i32* [ %5, %.lr.ph ], [ %p, %0 ]
  %.023 = phi i32* [ %3, %.lr.ph ], [ %q, %0 ]
  %2 = add nsw i32 %.05, -1
  %3 = getelementptr inbounds i32, i32* %.023, i64 1
  %4 = load i32, i32* %.023, align 16
  %5 = getelementptr inbounds i32, i32* %.014, i64 1
  store i32 %4, i32* %.014, align 16
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      
  ret void
}

!0 = !{!"branch_weights", i32 64, i32 4}





define void @example23(i16* nocapture %src, i32* nocapture %dst) optsize {
  br label %1


  %.04 = phi i16* [ %src, %0 ], [ %2, %1 ]
  %.013 = phi i32* [ %dst, %0 ], [ %6, %1 ]
  %i.02 = phi i32 [ 0, %0 ], [ %7, %1 ]
  %2 = getelementptr inbounds i16, i16* %.04, i64 1
  %3 = load i16, i16* %.04, align 2
  %4 = zext i16 %3 to i32
  %5 = shl nuw nsw i32 %4, 7
  %6 = getelementptr inbounds i32, i32* %.013, i64 1
  store i32 %5, i32* %.013, align 4
  %7 = add nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %7, 256
  br i1 %exitcond, label %8, label %1


  ret void
}






define void @example23b(i16* noalias nocapture %src, i32* noalias nocapture %dst) optsize {
  br label %1


  %.04 = phi i16* [ %src, %0 ], [ %2, %1 ]
  %.013 = phi i32* [ %dst, %0 ], [ %6, %1 ]
  %i.02 = phi i32 [ 0, %0 ], [ %7, %1 ]
  %2 = getelementptr inbounds i16, i16* %.04, i64 1
  %3 = load i16, i16* %.04, align 2
  %4 = zext i16 %3 to i32
  %5 = shl nuw nsw i32 %4, 7
  %6 = getelementptr inbounds i32, i32* %.013, i64 1
  store i32 %5, i32* %.013, align 4
  %7 = add nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %7, 256
  br i1 %exitcond, label %8, label %1


  ret void
}


