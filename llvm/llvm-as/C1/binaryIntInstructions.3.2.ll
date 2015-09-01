






define void @add(i1 %x1, i8 %x2 ,i16 %x3, i32 %x4, i64 %x5){
entry:

  %res1 = add i1 %x1, %x1


  %res2 = add i8 %x2, %x2


  %res3 = add i16 %x3, %x3


  %res4 = add i32 %x4, %x4


  %res5 = add i64 %x5, %x5


  %res6 = add nuw i1 %x1, %x1


  %res7 = add nsw i1 %x1, %x1


  %res8 = add nuw nsw i1 %x1, %x1

  ret void
}

define void @addvec8NuwNsw(<2 x i8> %x1, <3 x i8> %x2 ,<4 x i8> %x3, <8 x i8> %x4, <16 x i8> %x5){
entry:

  %res1 = add nuw nsw <2 x i8> %x1, %x1


  %res2 = add nuw nsw <3 x i8> %x2, %x2


  %res3 = add nuw nsw <4 x i8> %x3, %x3


  %res4 = add nuw nsw <8 x i8> %x4, %x4


  %res5 = add nuw nsw <16 x i8> %x5, %x5

  ret void
}

define void @addvec16NuwNsw(<2 x i16> %x1, <3 x i16> %x2 ,<4 x i16> %x3, <8 x i16> %x4, <16 x i16> %x5){
entry:

  %res1 = add nuw nsw <2 x i16> %x1, %x1


  %res2 = add nuw nsw <3 x i16> %x2, %x2


  %res3 = add nuw nsw <4 x i16> %x3, %x3


  %res4 = add nuw nsw <8 x i16> %x4, %x4


  %res5 = add nuw nsw <16 x i16> %x5, %x5

  ret void
}

define void @addvec32NuwNsw(<2 x i32> %x1, <3 x i32> %x2 ,<4 x i32> %x3, <8 x i32> %x4, <16 x i32> %x5){
entry:

  %res1 = add nuw nsw <2 x i32> %x1, %x1


  %res2 = add nuw nsw <3 x i32> %x2, %x2


  %res3 = add nuw nsw <4 x i32> %x3, %x3


  %res4 = add nuw nsw <8 x i32> %x4, %x4


  %res5 = add nuw nsw <16 x i32> %x5, %x5

  ret void
}

define void @addvec64NuwNsw(<2 x i64> %x1, <3 x i64> %x2 ,<4 x i64> %x3, <8 x i64> %x4, <16 x i64> %x5){
entry:

  %res1 = add nuw nsw <2 x i64> %x1, %x1


  %res2 = add nuw nsw <3 x i64> %x2, %x2


  %res3 = add nuw nsw <4 x i64> %x3, %x3


  %res4 = add nuw nsw <8 x i64> %x4, %x4


  %res5 = add nuw nsw <16 x i64> %x5, %x5

  ret void
}

define void @sub(i8 %x1){
entry:

  %res1 = sub i8 %x1, %x1


  %res2 = sub nuw i8 %x1, %x1


  %res3 = sub nsw i8 %x1, %x1


  %res4 = sub nuw nsw i8 %x1, %x1

  ret void
}

define void @mul(i8 %x1){
entry:

  %res1 = mul i8 %x1, %x1

  ret void
}

define void @udiv(i8 %x1){
entry:

  %res1 = udiv i8 %x1, %x1


  %res2 = udiv exact i8 %x1, %x1

  ret void
}

define void @sdiv(i8 %x1){
entry:

  %res1 = sdiv i8 %x1, %x1


  %res2 = sdiv exact i8 %x1, %x1

  ret void
}

define void @urem(i32 %x1){
entry:

  %res1 = urem i32 %x1, %x1

  ret void
}

define void @srem(i32 %x1){
entry:

  %res1 = srem i32 %x1, %x1

  ret void
}
