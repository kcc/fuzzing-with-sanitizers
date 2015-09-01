






define void @shl(i8 %x1){
entry:

  %res1 = shl i8 %x1, %x1


  %res2 = shl nuw i8 %x1, %x1


  %res3 = shl nsw i8 %x1, %x1


  %res4 = shl nuw nsw i8 %x1, %x1

  ret void
}

define void @lshr(i8 %x1){
entry:

  %res1 = lshr i8 %x1, %x1


  %res2 = lshr exact i8 %x1, %x1

  ret void
}

define void @ashr(i8 %x1){
entry:

  %res1 = ashr i8 %x1, %x1


  %res2 = ashr exact i8 %x1, %x1

  ret void
}

define void @and(i8 %x1){
entry:

  %res1 = and i8 %x1, %x1

  ret void
}

define void @or(i8 %x1){
entry:

  %res1 = or i8 %x1, %x1

  ret void
}

define void @xor(i8 %x1){
entry:

  %res1 = xor i8 %x1, %x1

  ret void
}
