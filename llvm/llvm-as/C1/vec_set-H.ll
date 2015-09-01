

define <2 x i64> @doload64(i16 signext  %x) nounwind  {
entry:
	%tmp36 = insertelement <8 x i16> undef, i16 %x, i32 0		
	%tmp37 = insertelement <8 x i16> %tmp36, i16 %x, i32 1		
	%tmp38 = insertelement <8 x i16> %tmp37, i16 %x, i32 2		
	%tmp39 = insertelement <8 x i16> %tmp38, i16 %x, i32 3		
	%tmp40 = insertelement <8 x i16> %tmp39, i16 %x, i32 4		
	%tmp41 = insertelement <8 x i16> %tmp40, i16 %x, i32 5		
	%tmp42 = insertelement <8 x i16> %tmp41, i16 %x, i32 6		
	%tmp43 = insertelement <8 x i16> %tmp42, i16 %x, i32 7		
	%tmp46 = bitcast <8 x i16> %tmp43 to <2 x i64>		
	ret <2 x i64> %tmp46
}
