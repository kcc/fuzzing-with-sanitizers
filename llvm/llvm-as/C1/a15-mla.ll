




define <4 x i32> @fun_a(<4 x i32> %x, <4 x i32> %y) nounwind{
  %1 = add <4 x i32> %x, %y


  %2 = mul <4 x i32> %1, %1
  %3 = add <4 x i32> %y, %2
  ret <4 x i32> %3
}




define <4 x float> @fun_b(<4 x float> %x, <4 x float> %y, <4 x float> %z) nounwind{

  %t = fmul <4 x float> %x, %y
  %r = fadd <4 x float> %t, %z
  ret <4 x float> %r
}




define <4 x float> @fun_c(<4 x float> %x, <4 x float> %y, <4 x float> %z, <4 x float> %u, <4 x float> %v) nounwind{

  %t1 = fmul <4 x float> %x, %y
  %r1 = fadd <4 x float> %t1, %z

  %t2 = fmul <4 x float> %u, %v
  %r2 = fadd <4 x float> %t2, %r1
  ret <4 x float> %r2
}

