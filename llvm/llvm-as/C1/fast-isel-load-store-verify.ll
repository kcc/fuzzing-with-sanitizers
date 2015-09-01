








@a = global i8 1, align 1
@b = global i16 2, align 2
@c = global i32 4, align 4



define i8 @t1() nounwind uwtable ssp {



  %1 = load i8, i8* @a, align 1
  %2 = add nsw i8 %1, 1
  ret i8 %2
}

define i16 @t2() nounwind uwtable ssp {



  %1 = load i16, i16* @b, align 2
  %2 = add nsw i16 %1, 1
  ret i16 %2
}

define i32 @t3() nounwind uwtable ssp {



  %1 = load i32, i32* @c, align 4
  %2 = add nsw i32 %1, 1
  ret i32 %2
}



define void @t4(i8 %v) nounwind uwtable ssp {



  %1 = add nsw i8 %v, 1
  store i8 %1, i8* @a, align 1
  ret void
}

define void @t5(i16 %v) nounwind uwtable ssp {



  %1 = add nsw i16 %v, 1
  store i16 %1, i16* @b, align 2
  ret void
}

define void @t6(i32 %v) nounwind uwtable ssp {



  %1 = add nsw i32 %v, 1
  store i32 %1, i32* @c, align 4
  ret void
}
