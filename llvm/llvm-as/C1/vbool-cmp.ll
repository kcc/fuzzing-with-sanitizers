





define <4 x i1> @ffoo(<4 x float> %a, <4 x float> %b) nounwind {
entry:
  %cmp = fcmp olt <4 x float> %a, %b		
  ret <4 x i1> %cmp
}



define <4 x i1> @ifoo(<4 x i32> %a, <4 x i32> %b) nounwind {
entry:
  %cmp = icmp slt <4 x i32> %a, %b		
  ret <4 x i1> %cmp
}
