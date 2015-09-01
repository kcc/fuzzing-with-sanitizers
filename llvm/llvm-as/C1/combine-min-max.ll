




define i32 @ab_eq_i32(i32 %a, i32 %b) {



  %cmp = icmp eq i32 %a, %b
  %sel = select i1 %cmp, i32 %a, i32 %b
  ret i32 %sel
}

define i64 @ba_ne_i64(i64 %a, i64 %b) {



  %cmp = icmp ne i64 %a, %b
  %sel = select i1 %cmp, i64 %b, i64 %a
  ret i64 %sel
}






define i16 @ab_ugt_i16(i16 %a, i16 %b) {



  %cmp = icmp ugt i16 %a, %b
  %sel = select i1 %cmp, i16 %a, i16 %b
  ret i16 %sel
}






define i32 @ab_ugt_i32(i32 %a, i32 %b) {


  %cmp = icmp ugt i32 %a, %b
  %sel = select i1 %cmp, i32 %a, i32 %b
  ret i32 %sel
}

define i32 @ab_uge_i32(i32 %a, i32 %b) {


  %cmp = icmp uge i32 %a, %b
  %sel = select i1 %cmp, i32 %a, i32 %b
  ret i32 %sel
}

define i32 @ab_ult_i32(i32 %a, i32 %b) {


  %cmp = icmp ult i32 %a, %b
  %sel = select i1 %cmp, i32 %a, i32 %b
  ret i32 %sel
}

define i32 @ab_ule_i32(i32 %a, i32 %b) {


  %cmp = icmp ule i32 %a, %b
  %sel = select i1 %cmp, i32 %a, i32 %b
  ret i32 %sel
}


define i32 @ab_sgt_i32(i32 %a, i32 %b) {


  %cmp = icmp sgt i32 %a, %b
  %sel = select i1 %cmp, i32 %a, i32 %b
  ret i32 %sel
}

define i32 @ab_sge_i32(i32 %a, i32 %b) {


  %cmp = icmp sge i32 %a, %b
  %sel = select i1 %cmp, i32 %a, i32 %b
  ret i32 %sel
}

define i32 @ab_slt_i32(i32 %a, i32 %b) {


  %cmp = icmp slt i32 %a, %b
  %sel = select i1 %cmp, i32 %a, i32 %b
  ret i32 %sel
}

define i32 @ab_sle_i32(i32 %a, i32 %b) {


  %cmp = icmp sle i32 %a, %b
  %sel = select i1 %cmp, i32 %a, i32 %b
  ret i32 %sel
}


define i32 @ba_ugt_i32(i32 %a, i32 %b) {


  %cmp = icmp ugt i32 %a, %b
  %sel = select i1 %cmp, i32 %b, i32 %a
  ret i32 %sel
}

define i32 @ba_uge_i32(i32 %a, i32 %b) {


  %cmp = icmp uge i32 %a, %b
  %sel = select i1 %cmp, i32 %b, i32 %a
  ret i32 %sel
}

define i32 @ba_ult_i32(i32 %a, i32 %b) {


  %cmp = icmp ult i32 %a, %b
  %sel = select i1 %cmp, i32 %b, i32 %a
  ret i32 %sel
}

define i32 @ba_ule_i32(i32 %a, i32 %b) {


  %cmp = icmp ule i32 %a, %b
  %sel = select i1 %cmp, i32 %b, i32 %a
  ret i32 %sel
}


define i32 @ba_sgt_i32(i32 %a, i32 %b) {


  %cmp = icmp sgt i32 %a, %b
  %sel = select i1 %cmp, i32 %b, i32 %a
  ret i32 %sel
}

define i32 @ba_sge_i32(i32 %a, i32 %b) {


  %cmp = icmp sge i32 %a, %b
  %sel = select i1 %cmp, i32 %b, i32 %a
  ret i32 %sel
}

define i32 @ba_slt_i32(i32 %a, i32 %b) {


  %cmp = icmp slt i32 %a, %b
  %sel = select i1 %cmp, i32 %b, i32 %a
  ret i32 %sel
}

define i32 @ba_sle_i32(i32 %a, i32 %b) {


  %cmp = icmp sle i32 %a, %b
  %sel = select i1 %cmp, i32 %b, i32 %a
  ret i32 %sel
}





define i64 @ab_ugt_i64(i64 %a, i64 %b) {


  %cmp = icmp ugt i64 %a, %b
  %sel = select i1 %cmp, i64 %a, i64 %b
  ret i64 %sel
}

define i64 @ab_uge_i64(i64 %a, i64 %b) {


  %cmp = icmp uge i64 %a, %b
  %sel = select i1 %cmp, i64 %a, i64 %b
  ret i64 %sel
}

define i64 @ab_ult_i64(i64 %a, i64 %b) {


  %cmp = icmp ult i64 %a, %b
  %sel = select i1 %cmp, i64 %a, i64 %b
  ret i64 %sel
}

define i64 @ab_ule_i64(i64 %a, i64 %b) {


  %cmp = icmp ule i64 %a, %b
  %sel = select i1 %cmp, i64 %a, i64 %b
  ret i64 %sel
}


define i64 @ab_sgt_i64(i64 %a, i64 %b) {


  %cmp = icmp sgt i64 %a, %b
  %sel = select i1 %cmp, i64 %a, i64 %b
  ret i64 %sel
}

define i64 @ab_sge_i64(i64 %a, i64 %b) {


  %cmp = icmp sge i64 %a, %b
  %sel = select i1 %cmp, i64 %a, i64 %b
  ret i64 %sel
}

define i64 @ab_slt_i64(i64 %a, i64 %b) {


  %cmp = icmp slt i64 %a, %b
  %sel = select i1 %cmp, i64 %a, i64 %b
  ret i64 %sel
}

define i64 @ab_sle_i64(i64 %a, i64 %b) {


  %cmp = icmp sle i64 %a, %b
  %sel = select i1 %cmp, i64 %a, i64 %b
  ret i64 %sel
}


define i64 @ba_ugt_i64(i64 %a, i64 %b) {


  %cmp = icmp ugt i64 %a, %b
  %sel = select i1 %cmp, i64 %b, i64 %a
  ret i64 %sel
}

define i64 @ba_uge_i64(i64 %a, i64 %b) {


  %cmp = icmp uge i64 %a, %b
  %sel = select i1 %cmp, i64 %b, i64 %a
  ret i64 %sel
}

define i64 @ba_ult_i64(i64 %a, i64 %b) {


  %cmp = icmp ult i64 %a, %b
  %sel = select i1 %cmp, i64 %b, i64 %a
  ret i64 %sel
}

define i64 @ba_ule_i64(i64 %a, i64 %b) {


  %cmp = icmp ule i64 %a, %b
  %sel = select i1 %cmp, i64 %b, i64 %a
  ret i64 %sel
}


define i64 @ba_sgt_i64(i64 %a, i64 %b) {


  %cmp = icmp sgt i64 %a, %b
  %sel = select i1 %cmp, i64 %b, i64 %a
  ret i64 %sel
}

define i64 @ba_sge_i64(i64 %a, i64 %b) {


  %cmp = icmp sge i64 %a, %b
  %sel = select i1 %cmp, i64 %b, i64 %a
  ret i64 %sel
}

define i64 @ba_slt_i64(i64 %a, i64 %b) {


  %cmp = icmp slt i64 %a, %b
  %sel = select i1 %cmp, i64 %b, i64 %a
  ret i64 %sel
}

define i64 @ba_sle_i64(i64 %a, i64 %b) {


  %cmp = icmp sle i64 %a, %b
  %sel = select i1 %cmp, i64 %b, i64 %a
  ret i64 %sel
}
