


define i32 @fcmp_oeq(float %x, float %y) {



  %1 = fcmp oeq float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_ogt(float %x, float %y) {



  %1 = fcmp ogt float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_oge(float %x, float %y) {



  %1 = fcmp oge float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_olt(float %x, float %y) {



  %1 = fcmp olt float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_ole(float %x, float %y) {



  %1 = fcmp ole float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_one(float %x, float %y) {




  %1 = fcmp one float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_ord(float %x, float %y) {



  %1 = fcmp ord float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_uno(float %x, float %y) {



  %1 = fcmp uno float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_ueq(float %x, float %y) {




  %1 = fcmp ueq float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_ugt(float %x, float %y) {



  %1 = fcmp ugt float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_uge(float %x, float %y) {



  %1 = fcmp uge float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_ult(float %x, float %y) {



  %1 = fcmp ult float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_ule(float %x, float %y) {



  %1 = fcmp ule float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @fcmp_une(float %x, float %y) {



  %1 = fcmp une float %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_eq(i32 %x, i32 %y) {



  %1 = icmp eq i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_ne(i32 %x, i32 %y) {



  %1 = icmp ne i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_ugt(i32 %x, i32 %y) {



  %1 = icmp ugt i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_uge(i32 %x, i32 %y) {



  %1 = icmp uge i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_ult(i32 %x, i32 %y) {



  %1 = icmp ult i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_ule(i32 %x, i32 %y) {



  %1 = icmp ule i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_sgt(i32 %x, i32 %y) {



  %1 = icmp sgt i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_sge(i32 %x, i32 %y) {



  %1 = icmp sge i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_slt(i32 %x, i32 %y) {



  %1 = icmp slt i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

define i32 @icmp_sle(i32 %x, i32 %y) {



  %1 = icmp sle i32 %x, %y
  br i1 %1, label %bb1, label %bb2
bb2:
  ret i32 1
bb1:
  ret i32 0
}

