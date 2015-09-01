

define i32 @func(i8* %A) nounwind readnone {
entry:
  %tmp = ptrtoint i8* %A to i32
  %shr = lshr i32 %tmp, 5
  %shl = shl i32 %tmp, 27
  %or = or i32 %shr, %shl

  ret i32 %or
}
