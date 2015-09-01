


define i32 @icmp_eq_i8(i8 zeroext %a) {


  %1 = and i8 %a, 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_eq_i16(i16 zeroext %a) {


  %1 = and i16 %a, 2
  %2 = icmp eq i16 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_eq_i32(i32 %a) {


  %1 = and i32 %a, 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_eq_i64_1(i64 %a) {


  %1 = and i64 %a, 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_eq_i64_2(i64 %a) {


  %1 = and i64 %a, 4294967296
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_ne_i8(i8 zeroext %a) {


  %1 = and i8 %a, 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_ne_i16(i16 zeroext %a) {


  %1 = and i16 %a, 2
  %2 = icmp ne i16 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_ne_i32(i32 %a) {


  %1 = and i32 %a, 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_ne_i64_1(i64 %a) {


  %1 = and i64 %a, 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_ne_i64_2(i64 %a) {


  %1 = and i64 %a, 4294967296
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_slt_i8(i8 zeroext %a) {


  %1 = icmp slt i8 %a, 0
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_slt_i16(i16 zeroext %a) {


  %1 = icmp slt i16 %a, 0
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_slt_i32(i32 %a) {


  %1 = icmp slt i32 %a, 0
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_slt_i64(i64 %a) {


  %1 = icmp slt i64 %a, 0
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sge_i8(i8 zeroext %a) {


  %1 = icmp sge i8 %a, 0
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sge_i16(i16 zeroext %a) {


  %1 = icmp sge i16 %a, 0
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sle_i8(i8 zeroext %a) {


  %1 = icmp sle i8 %a, -1
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sle_i16(i16 zeroext %a) {


  %1 = icmp sle i16 %a, -1
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sle_i32(i32 %a) {


  %1 = icmp sle i32 %a, -1
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sle_i64(i64 %a) {


  %1 = icmp sle i64 %a, -1
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sgt_i8(i8 zeroext %a) {


  %1 = icmp sgt i8 %a, -1
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sgt_i16(i16 zeroext %a) {


  %1 = icmp sgt i16 %a, -1
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sgt_i32(i32 %a) {


  %1 = icmp sgt i32 %a, -1
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

define i32 @icmp_sgt_i64(i64 %a) {


  %1 = icmp sgt i64 %a, -1
  br i1 %1, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}


define i32 @icmp_eq_and_i32(i32 %a, i1 %c) {



  %1 = and i32 %a, 4
  br i1 %c, label %bb0, label %bb2
bb0:
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb1, label %bb2, !prof !0
bb1:
  ret i32 1
bb2:
  ret i32 0
}

!0 = !{!"branch_weights", i32 0, i32 2147483647}
!1 = !{!"branch_weights", i32 2147483647, i32 0}
