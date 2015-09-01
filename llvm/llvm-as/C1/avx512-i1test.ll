


target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"




define void @func() {
bb1:
  br i1 undef, label %L_10, label %L_10

L_10:                                             
  br i1 undef, label %L_30, label %bb56

bb56:                                             
  br label %bb33

bb33:                                             
  %r111 = load i64, i64* undef, align 8
  br i1 undef, label %bb51, label %bb35

bb35:                                             
  br i1 undef, label %L_19, label %bb37

bb37:                                             
  %r128 = and i64 %r111, 576460752303423488
  %phitmp = icmp eq i64 %r128, 0
  br label %L_19

L_19:                                             
  %"$V_S25.0" = phi i1 [ %phitmp, %bb37 ], [ true, %bb35 ]
  br i1 undef, label %bb51, label %bb42

bb42:                                             
  %r136 = select i1 %"$V_S25.0", i32* undef, i32* undef
  br label %bb51

bb51:                                             
  br i1 false, label %L_30, label %bb33

L_30:                                             
  ret void
}
