


define <8 x i32> @a(<8 x i16> %a) nounwind {
  %c = sext <8 x i16> %a to <8 x i32>
  ret <8 x i32> %c
}






define <1 x i32> @c(<1 x i16> %a) nounwind {
  %c = sext <1 x i16> %a to <1 x i32>
  ret <1 x i32> %c
}

define <8 x i32> @d(<8 x i16> %a) nounwind {
  %c = zext <8 x i16> %a to <8 x i32>
  ret <8 x i32> %c
}






define <1 x i32> @f(<1 x i16> %a) nounwind {
  %c = zext <1 x i16> %a to <1 x i32>
  ret <1 x i32> %c
}

define <8 x i16> @g(<8 x i32> %a) nounwind {
  %c = trunc <8 x i32> %a to <8 x i16>
  ret <8 x i16> %c
}

define <3 x i16> @h(<3 x i32> %a) nounwind {
  %c = trunc <3 x i32> %a to <3 x i16>
  ret <3 x i16> %c
}

define <1 x i16> @i(<1 x i32> %a) nounwind {
  %c = trunc <1 x i32> %a to <1 x i16>
  ret <1 x i16> %c
}


define void @__OpenCL_math_kernel4_kernel() nounwind {
  %tmp12.i = and <4 x i32> zeroinitializer, <i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040> 
  %cmp13.i = icmp eq <4 x i32> %tmp12.i, <i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040> 
  %cmp.ext14.i = sext <4 x i1> %cmp13.i to <4 x i32> 
  %tmp2110.i = and <4 x i1> %cmp13.i, zeroinitializer 
  ret void
}
