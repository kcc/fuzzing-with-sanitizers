




define <8 x i32> @foo(<8 x i1> %bar) nounwind readnone {
entry:
  %s = sext <8 x i1> %bar to <8 x i32>
  ret <8 x i32> %s





}
