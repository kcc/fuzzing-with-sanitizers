





define i8 @f1(i8 %r2) {



  %y = add i8 %r2, 1
  ret i8 %y
}

define i16 @f2(i8 %r2, i16 %r3) {



  ret i16 %r3
}

define i32 @f3(i8 %r2, i16 %r3, i32 %r4) {



  ret i32 %r4
}

define i64 @f4(i8 %r2, i16 %r3, i32 %r4, i64 %r5) {



  ret i64 %r5
}


define float @f5(i8 %r2, i16 %r3, i32 %r4, i64 %r5, float %f0) {



  %y = fadd float %f0, %f0
  ret float %y
}

define double @f6(i8 %r2, i16 %r3, i32 %r4, i64 %r5, float %f0, double %f2) {



  ret double %f2
}




define void @f7(fp128 *%r2, i16 %r3, i32 %r4, i64 %r5, float %f0, double %f2,
                fp128 %r6) {







  %y = fadd fp128 %r6, %r6
  store fp128 %y, fp128 *%r2
  ret void
}

define i64 @f8(i8 %r2, i16 %r3, i32 %r4, i64 %r5, float %f0, double %f2,
               fp128 %r6, i64 %s1) {



  ret i64 %s1
}

define float @f9(i8 %r2, i16 %r3, i32 %r4, i64 %r5, float %f0, double %f2,
                 fp128 %r6, i64 %s1, float %f4) {



  ret float %f4
}

define double @f10(i8 %r2, i16 %r3, i32 %r4, i64 %r5, float %f0, double %f2,
                   fp128 %r6, i64 %s1, float %f4, double %f6) {



  ret double %f6
}

define i64 @f11(i8 %r2, i16 %r3, i32 %r4, i64 %r5, float %f0, double %f2,
                fp128 %r6, i64 %s1, float %f4, double %f6, i64 %s2) {



  ret i64 %s2
}


define float @f12(i8 %r2, i16 %r3, i32 %r4, i64 %r5, float %f0, double %f2,
                  fp128 %r6, i64 %s1, float %f4, double %f6, i64 %s2,
                  float %s3) {



  ret float %s3
}


define void @f13(fp128 *%r2, i16 %r3, i32 %r4, i64 %r5, float %f0, double %f2,
                 fp128 %r6, i64 %s1, float %f4, double %f6, i64 %s2,
                 float %s3, fp128 %s4) {








  %y = fadd fp128 %s4, %s4
  store fp128 %y, fp128 *%r2
  ret void
}


define fp128 @f14(fp128 %r3) {







  %y = fadd fp128 %r3, %r3
  ret fp128 %y
}

