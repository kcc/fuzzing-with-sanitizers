








@b2 = global i8 0, align 1
@b1 = global i8 1, align 1
@uc1 = global i8 0, align 1
@uc2 = global i8 -1, align 1
@sc1 = global i8 -128, align 1
@sc2 = global i8 127, align 1
@ss1 = global i16 -32768, align 2
@ss2 = global i16 32767, align 2
@us1 = global i16 0, align 2
@us2 = global i16 -1, align 2
@ssi = global i16 0, align 2
@ssj = global i16 0, align 2
@i = global i32 0, align 4
@j = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"%i %i\0A\00", align 1


define void @_Z3b_iv()  {
entry:

  %0 = load i8, i8* @b1, align 1
  %tobool = trunc i8 %0 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* @b2, align 1
  %1 = load i8, i8* @b2, align 1
  %tobool1 = trunc i8 %1 to i1
  %conv = zext i1 %tobool1 to i32
  store i32 %conv, i32* @i, align 4






  ret void

}


define void @_Z4uc_iv()  {
entry:


  %0 = load i8, i8* @uc1, align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @i, align 4
  %1 = load i8, i8* @uc2, align 1
  %conv1 = zext i8 %1 to i32



  store i32 %conv1, i32* @j, align 4
  ret void


}


define void @_Z4sc_iv()  {
entry:



  %0 = load i8, i8* @sc1, align 1
  %conv = sext i8 %0 to i32
  store i32 %conv, i32* @i, align 4
  %1 = load i8, i8* @sc2, align 1
  %conv1 = sext i8 %1 to i32
  store i32 %conv1, i32* @j, align 4






  ret void

}


define void @_Z4us_iv()  {
entry:

  %0 = load i16, i16* @us1, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, i32* @i, align 4
  %1 = load i16, i16* @us2, align 2
  %conv1 = zext i16 %1 to i32
  store i32 %conv1, i32* @j, align 4
  ret void



}


define void @_Z4ss_iv()  {
entry:



  %0 = load i16, i16* @ss1, align 2
  %conv = sext i16 %0 to i32
  store i32 %conv, i32* @i, align 4
  %1 = load i16, i16* @ss2, align 2
  %conv1 = sext i16 %1 to i32
  store i32 %conv1, i32* @j, align 4






  ret void

}


define void @_Z4b_ssv()  {
entry:

  %0 = load i8, i8* @b2, align 1
  %tobool = trunc i8 %0 to i1
  %conv = zext i1 %tobool to i16
  store i16 %conv, i16* @ssi, align 2
  ret void



}


define void @_Z5uc_ssv()  {
entry:

  %0 = load i8, i8* @uc1, align 1
  %conv = zext i8 %0 to i16
  store i16 %conv, i16* @ssi, align 2
  %1 = load i8, i8* @uc2, align 1
  %conv1 = zext i8 %1 to i16



  store i16 %conv1, i16* @ssj, align 2
  ret void

}


define void @_Z5sc_ssv()  {
entry:


  %0 = load i8, i8* @sc1, align 1
  %conv = sext i8 %0 to i16
  store i16 %conv, i16* @ssi, align 2
  %1 = load i8, i8* @sc2, align 1
  %conv1 = sext i8 %1 to i16
  store i16 %conv1, i16* @ssj, align 2






  ret void

}

