






define <8 x i32> @vpandd256(<8 x i32> %a, <8 x i32> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <8 x i32> %a, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %x = and <8 x i32> %a2, %b
  ret <8 x i32> %x
}




define <8 x i32> @vpord256(<8 x i32> %a, <8 x i32> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <8 x i32> %a, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %x = or <8 x i32> %a2, %b
  ret <8 x i32> %x
}




define <8 x i32> @vpxord256(<8 x i32> %a, <8 x i32> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <8 x i32> %a, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %x = xor <8 x i32> %a2, %b
  ret <8 x i32> %x
}




define <4 x i64> @vpandq256(<4 x i64> %a, <4 x i64> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <4 x i64> %a, <i64 1, i64 1, i64 1, i64 1>
  %x = and <4 x i64> %a2, %b
  ret <4 x i64> %x
}




define <4 x i64> @vporq256(<4 x i64> %a, <4 x i64> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <4 x i64> %a, <i64 1, i64 1, i64 1, i64 1>
  %x = or <4 x i64> %a2, %b
  ret <4 x i64> %x
}




define <4 x i64> @vpxorq256(<4 x i64> %a, <4 x i64> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <4 x i64> %a, <i64 1, i64 1, i64 1, i64 1>
  %x = xor <4 x i64> %a2, %b
  ret <4 x i64> %x
}






define <4 x i32> @vpandd128(<4 x i32> %a, <4 x i32> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <4 x i32> %a, <i32 1, i32 1, i32 1, i32 1>
  %x = and <4 x i32> %a2, %b
  ret <4 x i32> %x
}




define <4 x i32> @vpord128(<4 x i32> %a, <4 x i32> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <4 x i32> %a, <i32 1, i32 1, i32 1, i32 1>
  %x = or <4 x i32> %a2, %b
  ret <4 x i32> %x
}




define <4 x i32> @vpxord128(<4 x i32> %a, <4 x i32> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <4 x i32> %a, <i32 1, i32 1, i32 1, i32 1>
  %x = xor <4 x i32> %a2, %b
  ret <4 x i32> %x
}




define <2 x i64> @vpandq128(<2 x i64> %a, <2 x i64> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <2 x i64> %a, <i64 1, i64 1>
  %x = and <2 x i64> %a2, %b
  ret <2 x i64> %x
}




define <2 x i64> @vporq128(<2 x i64> %a, <2 x i64> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <2 x i64> %a, <i64 1, i64 1>
  %x = or <2 x i64> %a2, %b
  ret <2 x i64> %x
}




define <2 x i64> @vpxorq128(<2 x i64> %a, <2 x i64> %b) nounwind uwtable readnone ssp {
entry:
  
  %a2 = add <2 x i64> %a, <i64 1, i64 1>
  %x = xor <2 x i64> %a2, %b
  ret <2 x i64> %x
}
