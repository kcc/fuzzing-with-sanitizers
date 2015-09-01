




@c = common global i8 0, align 4
@s = common global i16 0, align 4
@i = common global i32 0, align 4
@l = common global i64 0, align 8
@uc = common global i8 0, align 4
@us = common global i16 0, align 4
@ui = common global i32 0, align 4
@l1 = common global i64 0, align 8

define i64 @func1() nounwind readonly {
entry:






  %0 = load i8, i8* @c, align 4
  %conv = sext i8 %0 to i64
  ret i64 %conv
}

define i64 @func2() nounwind readonly {
entry:






  %0 = load i16, i16* @s, align 4
  %conv = sext i16 %0 to i64
  ret i64 %conv
}

define i64 @func3() nounwind readonly {
entry:






  %0 = load i32, i32* @i, align 4
  %conv = sext i32 %0 to i64
  ret i64 %conv
}

define i64 @func4() nounwind readonly {
entry:






  %0 = load i64, i64* @l, align 8
  ret i64 %0
}

define i64 @ufunc1() nounwind readonly {
entry:






  %0 = load i8, i8* @uc, align 4
  %conv = zext i8 %0 to i64
  ret i64 %conv
}

define i64 @ufunc2() nounwind readonly {
entry:






  %0 = load i16, i16* @us, align 4
  %conv = zext i16 %0 to i64
  ret i64 %conv
}

define i64 @ufunc3() nounwind readonly {
entry:






  %0 = load i32, i32* @ui, align 4
  %conv = zext i32 %0 to i64
  ret i64 %conv
}

define void @sfunc1() nounwind {
entry:






  %0 = load i64, i64* @l1, align 8
  %conv = trunc i64 %0 to i8
  store i8 %conv, i8* @c, align 4
  ret void
}

define void @sfunc2() nounwind {
entry:






  %0 = load i64, i64* @l1, align 8
  %conv = trunc i64 %0 to i16
  store i16 %conv, i16* @s, align 4
  ret void
}

define void @sfunc3() nounwind {
entry:






  %0 = load i64, i64* @l1, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* @i, align 4
  ret void
}

define void @sfunc4() nounwind {
entry:






  %0 = load i64, i64* @l1, align 8
  store i64 %0, i64* @l, align 8
  ret void
}

