

define i32 @icmp_eq_imm(i32 %a) nounwind ssp {
entry:



  %cmp = icmp eq i32 %a, 31
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_eq_neg_imm(i32 %a) nounwind ssp {
entry:



  %cmp = icmp eq i32 %a, -7
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_eq_i32(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp eq i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_ne(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp ne i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_eq_ptr(i8* %a) {
entry:



  %cmp = icmp eq i8* %a, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_ne_ptr(i8* %a) {
entry:



  %cmp = icmp ne i8* %a, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_ugt(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp ugt i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_uge(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp uge i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_ult(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp ult i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_ule(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp ule i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_sgt(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp sgt i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_sge(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp sge i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_slt(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp slt i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_sle(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp sle i32 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @icmp_i64(i64 %a, i64 %b) nounwind ssp {
entry:



  %cmp = icmp sle i64 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define zeroext i1 @icmp_eq_i16(i16 %a, i16 %b) nounwind ssp {
entry:




  %cmp = icmp eq i16 %a, %b
  ret i1 %cmp
}

define zeroext i1 @icmp_eq_i8(i8 %a, i8 %b) nounwind ssp {
entry:




  %cmp = icmp eq i8 %a, %b
  ret i1 %cmp
}

define i32 @icmp_i16_unsigned(i16 %a, i16 %b) nounwind {
entry:




  %cmp = icmp ult i16 %a, %b
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

define i32 @icmp_i8_signed(i8 %a, i8 %b) nounwind {
entry:




  %cmp = icmp sgt i8 %a, %b
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

define i32 @icmp_i1_signed(i1 %a, i1 %b) nounwind {
entry:





  %cmp = icmp sgt i1 %a, %b
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

define i32 @icmp_i16_signed_const(i16 %a) nounwind {
entry:





  %cmp = icmp slt i16 %a, -233
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

define i32 @icmp_i8_signed_const(i8 %a) nounwind {
entry:





  %cmp = icmp sgt i8 %a, 124
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

define i32 @icmp_i1_unsigned_const(i1 %a) nounwind {
entry:





  %cmp = icmp ult i1 %a, 0
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}
