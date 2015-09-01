

define <8 x i16> @insert(<8 x i16> %foo, i16 %a) nounwind  {
entry:
	%vecext = insertelement <8 x i16> %foo, i16 %a, i32 7		
	ret <8 x i16> %vecext
}

