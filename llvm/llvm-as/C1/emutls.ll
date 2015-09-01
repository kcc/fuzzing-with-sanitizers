





@my_emutls_v_xyz = external global i8*, align 4
declare i8* @my_emutls_get_address(i8*)

define i32 @my_get_xyz() {








entry:
  %call = call i8* @my_emutls_get_address(i8* bitcast (i8** @my_emutls_v_xyz to i8*))
  %0 = bitcast i8* %call to i32*
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

@i1 = thread_local global i32 15
@i2 = external thread_local global i32
@i3 = internal thread_local global i32 15
@i4 = hidden thread_local global i32 15
@i5 = external hidden thread_local global i32
@s1 = thread_local global i16 15
@b1 = thread_local global i8 0

define i32 @f1() {








entry:
  %tmp1 = load i32, i32* @i1
  ret i32 %tmp1
}

define i32* @f2() {








entry:
  ret i32* @i1
}

define i32 @f3() nounwind {








entry:
  %tmp1 = load i32, i32* @i2
  ret i32 %tmp1
}

define i32* @f4() {








entry:
  ret i32* @i2
}

define i32 @f5() nounwind {








entry:
  %tmp1 = load i32, i32* @i3
  ret i32 %tmp1
}

define i32* @f6() {








entry:
  ret i32* @i3
}

define i32 @f7() {








entry:
  %tmp1 = load i32, i32* @i4
  ret i32 %tmp1
}

define i32* @f8() {








entry:
  ret i32* @i4
}

define i32 @f9() {








entry:
  %tmp1 = load i32, i32* @i5
  ret i32 %tmp1
}

define i32* @f10() {








entry:
  ret i32* @i5
}

define i16 @f11() {








entry:
  %tmp1 = load i16, i16* @s1
  ret i16 %tmp1
}

define i32 @f12() {








entry:
  %tmp1 = load i16, i16* @s1
  %tmp2 = sext i16 %tmp1 to i32
  ret i32 %tmp2
}

define i8 @f13() {









entry:
  %tmp1 = load i8, i8* @b1
  ret i8 %tmp1
}

define i32 @f14() {









entry:
  %tmp1 = load i8, i8* @b1
  %tmp2 = sext i8 %tmp1 to i32
  ret i32 %tmp2
}





























































