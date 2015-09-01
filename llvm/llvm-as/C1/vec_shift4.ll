

define <2 x i64> @shl1(<4 x i32> %r, <4 x i32> %a) nounwind readnone ssp {
entry:






  %shl = shl <4 x i32> %r, %a                     
  %tmp2 = bitcast <4 x i32> %shl to <2 x i64>     
  ret <2 x i64> %tmp2
}

define <2 x i64> @shl2(<16 x i8> %r, <16 x i8> %a) nounwind readnone ssp {
entry:




  %shl = shl <16 x i8> %r, %a                     
  %tmp2 = bitcast <16 x i8> %shl to <2 x i64>     
  ret <2 x i64> %tmp2
}
