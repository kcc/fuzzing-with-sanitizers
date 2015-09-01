








@B = external global i32


define <4 x i1> @foo(<4 x float> %a, <4 x float> %b) nounwind {
entry:
  %cmp = fcmp olt <4 x float> %a, %b              
  ret <4 x i1> %cmp
}



