








define void @foo(<2 x float>* %a) {


  %t1 = load <2 x float>, <2 x float>* %a
  %t2 = fmul <2 x float> %t1, %t1
  store <2 x float> %t2, <2 x float>* %a
  ret void
}

define void @foo2(<4 x float>* %a) {


  %t1 = load <4 x float>, <4 x float>* %a
  %t2 = fmul <4 x float> %t1, %t1
  store <4 x float> %t2, <4 x float>* %a
  ret void
}

define void @foo3(<8 x float>* %a) {



  %t1 = load <8 x float>, <8 x float>* %a
  %t2 = fmul <8 x float> %t1, %t1
  store <8 x float> %t2, <8 x float>* %a
  ret void
}



define void @foo4(<2 x i32>* %a) {


  %t1 = load <2 x i32>, <2 x i32>* %a
  %t2 = mul <2 x i32> %t1, %t1
  store <2 x i32> %t2, <2 x i32>* %a
  ret void
}

define void @foo5(<4 x i32>* %a) {


  %t1 = load <4 x i32>, <4 x i32>* %a
  %t2 = mul <4 x i32> %t1, %t1
  store <4 x i32> %t2, <4 x i32>* %a
  ret void
}

define void @foo6(<8 x i32>* %a) {



  %t1 = load <8 x i32>, <8 x i32>* %a
  %t2 = mul <8 x i32> %t1, %t1
  store <8 x i32> %t2, <8 x i32>* %a
  ret void
}
