



define <16 x i16> @split16(<16 x i16> %a, <16 x i16> %b, <16 x i8> %__mask) {











  %1 = icmp ult <16 x i16> %a, %b
  %2 = select <16 x i1> %1, <16 x i16> %a, <16 x i16> %b
  ret <16 x i16> %2
}

define <32 x i16> @split32(<32 x i16> %a, <32 x i16> %b, <32 x i8> %__mask) {
















  %1 = icmp ult <32 x i16> %a, %b
  %2 = select <32 x i1> %1, <32 x i16> %a, <32 x i16> %b
  ret <32 x i16> %2
}


define i128 @split128(<2 x i128> %a, <2 x i128> %b) {
























  %add = add nsw <2 x i128> %a, %b
  %rdx.shuf = shufflevector <2 x i128> %add, <2 x i128> undef, <2 x i32> <i32 undef, i32 0>
  %bin.rdx = add <2 x i128> %add, %rdx.shuf
  %e = extractelement <2 x i128> %bin.rdx, i32 1
  ret i128 %e
}
