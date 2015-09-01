


@object = external hidden global i64, section "__DATA, __objc_ivar", align 8





define void @t1() {
  %incdec.ptr = getelementptr inbounds i64, i64* @object, i64 1
  %tmp = load volatile i64, i64* %incdec.ptr, align 8
  ret void
}







define void @t2() {
  %incdec.ptr = getelementptr inbounds i64, i64* @object, i64 -33
  %tmp = load volatile i64, i64* %incdec.ptr, align 8
  ret void
}





define void @t3() {
  %incdec.ptr = getelementptr inbounds i64, i64* @object, i64 4095
  %tmp = load volatile i64, i64* %incdec.ptr, align 8
  ret void
}






define void @t4() {
  %incdec.ptr = getelementptr inbounds i64, i64* @object, i64 4096
  %tmp = load volatile i64, i64* %incdec.ptr, align 8
  ret void
}





define void @t5(i64 %a) {
  %incdec.ptr = getelementptr inbounds i64, i64* @object, i64 %a
  %tmp = load volatile i64, i64* %incdec.ptr, align 8
  ret void
}







define void @t6(i64 %a) {
  %tmp1 = getelementptr inbounds i64, i64* @object, i64 %a
  %incdec.ptr = getelementptr inbounds i64, i64* %tmp1, i64 4096
  %tmp = load volatile i64, i64* %incdec.ptr, align 8
  ret void
}


define void @t7(i64 %a) {



  %1 = add i64 %a, 65535   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}

define void @t8(i64 %a) {



  %1 = sub i64 %a, 4662   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}

define void @t9(i64 %a) {



  %1 = add i64 -305463297, %a   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}

define void @t10(i64 %a) {



  %1 = add i64 %a, 81909218222800896   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}

define void @t11(i64 %a) {




  %1 = add i64 %a, 19088743   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}


define void @t12(i64 %a) {



  %1 = add i64 %a, 4095   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}

define void @t13(i64 %a) {



  %1 = add i64 %a, -4095   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}

define void @t14(i64 %a) {



  %1 = add i64 %a, 1191936   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}

define void @t15(i64 %a) {



  %1 = add i64 %a, -1191936   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}

define void @t16(i64 %a) {


  %1 = add i64 %a, 28672   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}

define void @t17(i64 %a) {


  %1 = add i64 %a, -256   
  %2 = inttoptr i64 %1 to i64*
  %3 = load volatile i64, i64* %2, align 8
  ret void
}
