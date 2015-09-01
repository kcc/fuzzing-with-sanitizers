



@a = global i8 1, align 1
@b = global i16 2, align 2

define void @t1() nounwind uwtable ssp {








  %1 = load i8, i8* @a, align 1
  call void @foo1(i8 zeroext %1)
  ret void
}

define void @t2() nounwind uwtable ssp {






  %1 = load i16, i16* @b, align 2
  call void @foo2(i16 zeroext %1)
  ret void
}

declare void @foo1(i8 zeroext)
declare void @foo2(i16 zeroext)

define i32 @t3() nounwind uwtable ssp {








  %1 = load i8, i8* @a, align 1
  %2 = zext i8 %1 to i32
  ret i32 %2
}

define i32 @t4() nounwind uwtable ssp {






  %1 = load i16, i16* @b, align 2
  %2 = zext i16 %1 to i32
  ret i32 %2
}

define i32 @t5() nounwind uwtable ssp {






  %1 = load i16, i16* @b, align 2
  %2 = sext i16 %1 to i32
  ret i32 %2
}

define i32 @t6() nounwind uwtable ssp {






  %1 = load i8, i8* @a, align 2
  %2 = sext i8 %1 to i32
  ret i32 %2
}
