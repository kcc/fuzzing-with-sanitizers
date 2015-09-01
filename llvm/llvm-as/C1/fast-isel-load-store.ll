








@a = global i8 1, align 1
@b = global i16 2, align 2
@c = global i32 4, align 4
@d = global i64 8, align 8
@e = global float 1.25, align 4
@f = global double 3.5, align 8

%struct.s = type<{ i8, i32 }>
%struct.t = type<{ i8, i64 }>

@g = global %struct.s <{ i8 1, i32 2 }>, align 1
@h = global %struct.t <{ i8 1, i64 2 }>, align 1

@i = common global [8192 x i64] zeroinitializer, align 8



define i8 @t1() nounwind {

  %1 = load i8, i8* @a, align 1

  %2 = add nsw i8 %1, 1

  ret i8 %2
}

define i16 @t2() nounwind {

  %1 = load i16, i16* @b, align 2

  %2 = add nsw i16 %1, 1

  ret i16 %2
}

define i32 @t3() nounwind {

  %1 = load i32, i32* @c, align 4

  %2 = add nsw i32 %1, 1

  ret i32 %2
}

define i64 @t4() nounwind {

  %1 = load i64, i64* @d, align 4

  %2 = add nsw i64 %1, 1

  ret i64 %2
}

define float @t5() nounwind {

  %1 = load float, float* @e, align 4

  %2 = fadd float %1, 1.0

  ret float %2
}

define double @t6() nounwind {

  %1 = load double, double* @f, align 8

  %2 = fadd double %1, 1.0

  ret double %2
}



define void @t7(i8 %v) nounwind {

  %1 = add nsw i8 %v, 1
  store i8 %1, i8* @a, align 1




  ret void
}

define void @t8(i16 %v) nounwind {

  %1 = add nsw i16 %v, 1
  store i16 %1, i16* @b, align 2




  ret void
}

define void @t9(i32 %v) nounwind {

  %1 = add nsw i32 %v, 1
  store i32 %1, i32* @c, align 4




  ret void
}

define void @t10(i64 %v) nounwind {

  %1 = add nsw i64 %v, 1
  store i64 %1, i64* @d, align 4




  ret void
}

define void @t11(float %v) nounwind {

  %1 = fadd float %v, 1.0
  store float %1, float* @e, align 4


  ret void
}

define void @t12(double %v) nounwind {

  %1 = fadd double %v, 1.0
  store double %1, double* @f, align 8


  ret void
}


define i64 @t13() nounwind {

  %1 = load i32, i32* getelementptr inbounds (%struct.s, %struct.s* @g, i32 0, i32 1), align 1
  %2 = sext i32 %1 to i64


  %3 = add nsw i64 %2, 1

  ret i64 %3
}


define i64 @t14() nounwind {

  %1 = load i64, i64* getelementptr inbounds (%struct.t, %struct.t* @h, i32 0, i32 1), align 1


  %2 = add nsw i64 %1, 1

  ret i64 %2
}


define void @t15(i64 %v) nounwind {

  %1 = add nsw i64 %v, 1
  store i64 %1, i64* getelementptr inbounds (%struct.t, %struct.t* @h, i32 0, i32 1), align 1





  ret void
}


define i64 @t16() nounwind {

  %1 = load i64, i64* getelementptr inbounds ([8192 x i64], [8192 x i64]* @i, i32 0, i64 5000), align 8



  %2 = add nsw i64 %1, 1

  ret i64 %2
}


define void @t17(i64 %v) nounwind {

  %1 = add nsw i64 %v, 1
  store i64 %1, i64* getelementptr inbounds ([8192 x i64], [8192 x i64]* @i, i32 0, i64 5000), align 8






  ret void
}

