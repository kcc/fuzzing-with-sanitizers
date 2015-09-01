
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-macosx10.7.0"





























define void @f1() nounwind uwtable ssp {
bb:
  br label %bb1

bb1:
  %tmp = phi i32 [ 0, %bb ], [ %tmp21, %bb20 ]
  br label %bb2

bb2:
  br i1 undef, label %bb5, label %bb8

bb4:
  br i1 undef, label %bb2, label %bb20

bb5:
  br i1 undef, label %bb4, label %bb20

bb8:
  %tmp9 = phi i32 [ %tmp24, %bb23 ], [ 0, %bb2 ]
  br i1 false, label %bb41, label %bb10

bb10:
  %tmp11 = sub nsw i32 %tmp9, %tmp
  br i1 false, label %bb2, label %bb26

bb20:
  %tmp21 = phi i32 [ undef, %bb4 ], [ undef, %bb5 ], [ %tmp9, %bb27 ], [ undef, %bb32 ]
  %tmp22 = phi i32 [ undef, %bb4 ], [ undef, %bb5 ], [ %tmp11, %bb27 ], [ undef, %bb32 ]
  br label %bb1

bb23:
  %tmp24 = add nsw i32 %tmp9, 1
  br label %bb8

bb26:
  br i1 undef, label %bb27, label %bb32

bb27:
  %tmp28 = zext i32 %tmp11 to i64
  %tmp30 = icmp eq i64 undef, %tmp28
  br i1 %tmp30, label %bb20, label %bb27

bb32:
  br i1 undef, label %bb20, label %bb23

bb41:
  ret void
}
