

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"




define i32 @conversion_cost1(i32 %n, i8* nocapture %A, float* nocapture %B) nounwind uwtable ssp {
  %1 = icmp sgt i32 %n, 3
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 3, %0 ]
  %2 = trunc i64 %indvars.iv to i8
  %3 = getelementptr inbounds i8, i8* %A, i64 %indvars.iv
  store i8 %2, i8* %3, align 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      
  ret i32 undef
}




define i32 @conversion_cost2(i32 %n, i8* nocapture %A, float* nocapture %B) nounwind uwtable ssp {
  %1 = icmp sgt i32 %n, 9
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 9, %0 ]
  %add = add nsw i64 %indvars.iv, 3
  %tofp = sitofp i64 %add to float
  %gep = getelementptr inbounds float, float* %B, i64 %indvars.iv
  store float %tofp, float* %gep, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      
  ret i32 undef
}
