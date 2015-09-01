





define <16 x i8> @foo() nounwind ssp {
entry:
  ret <16 x i8> zeroinitializer
}

define void @t1() nounwind ssp {
entry:


  %call = call <16 x i8> @foo()
  ret void
}
