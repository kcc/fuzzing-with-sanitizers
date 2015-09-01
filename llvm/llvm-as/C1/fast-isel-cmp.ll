


define zeroext i1 @fcmp_oeq(float %x, float %y) {









  %1 = fcmp oeq float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_ogt(float %x, float %y) {





  %1 = fcmp ogt float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_oge(float %x, float %y) {






  %1 = fcmp oge float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_olt(float %x, float %y) {






  %1 = fcmp olt float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_ole(float %x, float %y) {






  %1 = fcmp ole float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_one(float %x, float %y) {






  %1 = fcmp one float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_ord(float %x, float %y) {






  %1 = fcmp ord float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_uno(float %x, float %y) {






  %1 = fcmp uno float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_ueq(float %x, float %y) {






  %1 = fcmp ueq float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_ugt(float %x, float %y) {






  %1 = fcmp ugt float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_uge(float %x, float %y) {






  %1 = fcmp uge float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_ult(float %x, float %y) {






  %1 = fcmp ult float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_ule(float %x, float %y) {






  %1 = fcmp ule float %x, %y
  ret i1 %1
}

define zeroext i1 @fcmp_une(float %x, float %y) {









  %1 = fcmp une float %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_eq(i32 %x, i32 %y) {






  %1 = icmp eq i32 %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_ne(i32 %x, i32 %y) {






  %1 = icmp ne i32 %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_ugt(i32 %x, i32 %y) {






  %1 = icmp ugt i32 %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_uge(i32 %x, i32 %y) {






  %1 = icmp uge i32 %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_ult(i32 %x, i32 %y) {






  %1 = icmp ult i32 %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_ule(i32 %x, i32 %y) {






  %1 = icmp ule i32 %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_sgt(i32 %x, i32 %y) {






  %1 = icmp sgt i32 %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_sge(i32 %x, i32 %y) {






  %1 = icmp sge i32 %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_slt(i32 %x, i32 %y) {






  %1 = icmp slt i32 %x, %y
  ret i1 %1
}

define zeroext i1 @icmp_sle(i32 %x, i32 %y) {






  %1 = icmp sle i32 %x, %y
  ret i1 %1
}


define zeroext i1 @fcmp_oeq2(float %x) {






  %1 = fcmp oeq float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_oeq3(float %x) {











  %1 = fcmp oeq float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_ogt2(float %x) {




  %1 = fcmp ogt float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_ogt3(float %x) {








  %1 = fcmp ogt float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_oge2(float %x) {






  %1 = fcmp oge float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_oge3(float %x) {








  %1 = fcmp oge float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_olt2(float %x) {




  %1 = fcmp olt float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_olt3(float %x) {








  %1 = fcmp olt float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_ole2(float %x) {






  %1 = fcmp ole float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_ole3(float %x) {








  %1 = fcmp ole float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_one2(float %x) {




  %1 = fcmp one float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_one3(float %x) {








  %1 = fcmp one float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_ord2(float %x) {






  %1 = fcmp ord float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_ord3(float %x) {






  %1 = fcmp ord float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_uno2(float %x) {






  %1 = fcmp uno float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_uno3(float %x) {






  %1 = fcmp uno float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_ueq2(float %x) {




  %1 = fcmp ueq float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_ueq3(float %x) {








  %1 = fcmp ueq float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_ugt2(float %x) {






  %1 = fcmp ugt float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_ugt3(float %x) {








  %1 = fcmp ugt float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_uge2(float %x) {




  %1 = fcmp uge float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_uge3(float %x) {








  %1 = fcmp uge float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_ult2(float %x) {






  %1 = fcmp ult float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_ult3(float %x) {








  %1 = fcmp ult float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_ule2(float %x) {




  %1 = fcmp ule float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_ule3(float %x) {








  %1 = fcmp ule float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_une2(float %x) {






  %1 = fcmp une float %x, %x
  ret i1 %1
}

define zeroext i1 @fcmp_une3(float %x) {











  %1 = fcmp une float %x, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @icmp_eq2(i32 %x) {




  %1 = icmp eq i32 %x, %x
  ret i1 %1
}

define zeroext i1 @icmp_ne2(i32 %x) {




  %1 = icmp ne i32 %x, %x
  ret i1 %1
}

define zeroext i1 @icmp_ugt2(i32 %x) {




  %1 = icmp ugt i32 %x, %x
  ret i1 %1
}

define zeroext i1 @icmp_uge2(i32 %x) {




  %1 = icmp uge i32 %x, %x
  ret i1 %1
}

define zeroext i1 @icmp_ult2(i32 %x) {




  %1 = icmp ult i32 %x, %x
  ret i1 %1
}

define zeroext i1 @icmp_ule2(i32 %x) {




  %1 = icmp ule i32 %x, %x
  ret i1 %1
}

define zeroext i1 @icmp_sgt2(i32 %x) {




  %1 = icmp sgt i32 %x, %x
  ret i1 %1
}

define zeroext i1 @icmp_sge2(i32 %x) {




  %1 = icmp sge i32 %x, %x
  ret i1 %1
}

define zeroext i1 @icmp_slt2(i32 %x) {




  %1 = icmp slt i32 %x, %x
  ret i1 %1
}

define zeroext i1 @icmp_sle2(i32 %x) {




  %1 = icmp sle i32 %x, %x
  ret i1 %1
}

