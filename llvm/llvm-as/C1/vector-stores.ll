



define void @foo1(<2 x float> %val, <2 x float>* %ptr) {
  store <2 x float> %val, <2 x float>* %ptr
  ret void
}



define void @foo2(<4 x float> %val, <4 x float>* %ptr) {
  store <4 x float> %val, <4 x float>* %ptr
  ret void
}



define void @foo3(<2 x i32> %val, <2 x i32>* %ptr) {
  store <2 x i32> %val, <2 x i32>* %ptr
  ret void
}



define void @foo4(<4 x i32> %val, <4 x i32>* %ptr) {
  store <4 x i32> %val, <4 x i32>* %ptr
  ret void
}

