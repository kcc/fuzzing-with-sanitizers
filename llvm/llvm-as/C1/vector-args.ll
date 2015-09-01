


define float @foo(<2 x float> %a) {



  %t1 = fmul <2 x float> %a, %a
  %t2 = extractelement <2 x float> %t1, i32 0
  %t3 = extractelement <2 x float> %t1, i32 1
  %t4 = fadd float %t2, %t3
  ret float %t4
}


define float @bar(<4 x float> %a) {



  %t1 = fmul <4 x float> %a, %a
  %t2 = extractelement <4 x float> %t1, i32 0
  %t3 = extractelement <4 x float> %t1, i32 1
  %t4 = fadd float %t2, %t3
  ret float %t4
}


define <4 x float> @baz(<4 x float> %a) {




  %t1 = fmul <4 x float> %a, %a
  ret <4 x float> %t1
}
