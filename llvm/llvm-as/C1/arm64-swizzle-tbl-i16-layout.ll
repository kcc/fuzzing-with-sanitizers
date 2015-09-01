



define <8 x i16> @foo(<8 x i16> %a) nounwind readnone {




























  %val = shufflevector <8 x i16> %a, <8 x i16> undef, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  ret <8 x i16> %val
}
