

define i32 @icmp_eq_i1(i1 %a) {


  %1 = icmp eq i1 %a, 0
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_eq_i8(i8 %a) {



  %1 = icmp eq i8 %a, 0
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_eq_i16(i16 %a) {



  %1 = icmp eq i16 %a, 0
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_eq_i32(i32 %a) {


  %1 = icmp eq i32 %a, 0
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_eq_i64(i64 %a) {


  %1 = icmp eq i64 %a, 0
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_eq_ptr(i8* %a) {


  %1 = icmp eq i8* %a, null
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

