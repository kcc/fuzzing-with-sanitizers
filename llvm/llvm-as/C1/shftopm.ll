




@s1 = global i16 -89, align 2
@s2 = global i16 4, align 2
@us1 = global i16 -503, align 2
@us2 = global i16 5, align 2
@s3 = common global i16 0, align 2
@us3 = common global i16 0, align 2

define void @sll() {
entry:
  %0 = load i16, i16* @s1, align 2
  %1 = load i16, i16* @s2, align 2
  %shl = shl i16 %0, %1
  store i16 %shl, i16* @s3, align 2











  ret void
}

define void @slli() {
entry:
  %0 = load i16, i16* @s1, align 2
  %shl = shl i16 %0, 5
  store i16 %shl, i16* @s3, align 2









  ret void
}

define void @srl() {
entry:
  %0 = load i16, i16* @us1, align 2
  %1 = load i16, i16* @us2, align 2
  %shr = lshr i16 %0, %1
  store i16 %shr, i16* @us3, align 2
  ret void











}

define void @srli() {
entry:
  %0 = load i16, i16* @us1, align 2
  %shr = lshr i16 %0, 4
  store i16 %shr, i16* @us3, align 2









  ret void
}

define void @sra() {
entry:
  %0 = load i16, i16* @s1, align 2
  %1 = load i16, i16* @s2, align 2
  %shr = ashr i16 %0, %1
  store i16 %shr, i16* @s3, align 2











  ret void
}

define void @srai() {
entry:
  %0 = load i16, i16* @s1, align 2
  %shr = ashr i16 %0, 2
  store i16 %shr, i16* @s3, align 2









  ret void
}
