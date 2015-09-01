









define i64 @icmp_eq_i64(i64 %a, i64 %b) {



  %cmp = icmp eq i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}

define i64 @icmp_ne_i64(i64 %a, i64 %b) {



  %cmp = icmp ne i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}

define i64 @icmp_ugt_i64(i64 %a, i64 %b) {



  %cmp = icmp ugt i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}

define i64 @icmp_uge_i64(i64 %a, i64 %b) {



  %cmp = icmp uge i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}

define i64 @icmp_ult_i64(i64 %a, i64 %b) {



  %cmp = icmp ult i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}

define i64 @icmp_ule_i64(i64 %a, i64 %b) {



  %cmp = icmp ule i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}

define i64 @icmp_sgt_i64(i64 %a, i64 %b) {



  %cmp = icmp sgt i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}

define i64 @icmp_sge_i64(i64 %a, i64 %b) {



  %cmp = icmp sge i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}

define i64 @icmp_slt_i64(i64 %a, i64 %b) {



  %cmp = icmp slt i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}

define i64 @icmp_sle_i64(i64 %a, i64 %b) {



  %cmp = icmp sle i64 %a, %b
  %ret = zext i1 %cmp to i64
  ret i64 %ret
}



define i32 @icmp_eq_i32(i32 %a, i32 %b) {



  %cmp = icmp eq i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}

define i32 @icmp_ne_i32(i32 %a, i32 %b) {



  %cmp = icmp ne i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}

define i32 @icmp_ugt_i32(i32 %a, i32 %b) {



  %cmp = icmp ugt i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}

define i32 @icmp_uge_i32(i32 %a, i32 %b) {



  %cmp = icmp uge i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}

define i32 @icmp_ult_i32(i32 %a, i32 %b) {



  %cmp = icmp ult i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}

define i32 @icmp_ule_i32(i32 %a, i32 %b) {



  %cmp = icmp ule i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}

define i32 @icmp_sgt_i32(i32 %a, i32 %b) {



  %cmp = icmp sgt i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}

define i32 @icmp_sge_i32(i32 %a, i32 %b) {



  %cmp = icmp sge i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}

define i32 @icmp_slt_i32(i32 %a, i32 %b) {



  %cmp = icmp slt i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}

define i32 @icmp_sle_i32(i32 %a, i32 %b) {



  %cmp = icmp sle i32 %a, %b
  %ret = zext i1 %cmp to i32
  ret i32 %ret
}




define i16 @icmp_eq_i16(i16 %a, i16 %b) {



  %cmp = icmp eq i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}

define i16 @icmp_ne_i16(i16 %a, i16 %b) {



  %cmp = icmp ne i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}

define i16 @icmp_ugt_i16(i16 %a, i16 %b) {



  %cmp = icmp ugt i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}

define i16 @icmp_uge_i16(i16 %a, i16 %b) {



  %cmp = icmp uge i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}

define i16 @icmp_ult_i16(i16 %a, i16 %b) {



  %cmp = icmp ult i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}

define i16 @icmp_ule_i16(i16 %a, i16 %b) {



  %cmp = icmp ule i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}

define i16 @icmp_sgt_i16(i16 %a, i16 %b) {



  %cmp = icmp sgt i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}

define i16 @icmp_sge_i16(i16 %a, i16 %b) {



  %cmp = icmp sge i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}

define i16 @icmp_slt_i16(i16 %a, i16 %b) {



  %cmp = icmp slt i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}

define i16 @icmp_sle_i16(i16 %a, i16 %b) {



  %cmp = icmp sle i16 %a, %b
  %ret = zext i1 %cmp to i16
  ret i16 %ret
}




define i8 @icmp_eq_i8(i8 %a, i8 %b) {




  %cmp = icmp eq i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}

define i8 @icmp_ne_i8(i8 %a, i8 %b) {




  %cmp = icmp ne i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}

define i8 @icmp_ugt_i8(i8 %a, i8 %b) {




  %cmp = icmp ugt i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}

define i8 @icmp_uge_i8(i8 %a, i8 %b) {




  %cmp = icmp uge i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}

define i8 @icmp_ult_i8(i8 %a, i8 %b) {




  %cmp = icmp ult i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}

define i8 @icmp_ule_i8(i8 %a, i8 %b) {




  %cmp = icmp ule i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}

define i8 @icmp_sgt_i8(i8 %a, i8 %b) {




  %cmp = icmp sgt i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}

define i8 @icmp_sge_i8(i8 %a, i8 %b) {




  %cmp = icmp sge i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}

define i8 @icmp_slt_i8(i8 %a, i8 %b) {




  %cmp = icmp slt i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}

define i8 @icmp_sle_i8(i8 %a, i8 %b) {




  %cmp = icmp sle i8 %a, %b
  %ret = zext i1 %cmp to i8
  ret i8 %ret
}
