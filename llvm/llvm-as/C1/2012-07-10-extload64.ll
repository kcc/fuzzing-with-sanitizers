


define void @load_store(<4 x i16>* %in) {
entry:

  %A27 = load <4 x i16>, <4 x i16>* %in, align 4
  %A28 = add <4 x i16> %A27, %A27

  store <4 x i16> %A28, <4 x i16>* %in, align 4
  ret void

}



define void @store_64(<2 x i32>* %ptr) {
BB:
  store <2 x i32> zeroinitializer, <2 x i32>* %ptr
  ret void


}


define <2 x i32> @load_64(<2 x i32>* %ptr) {
BB:
  %t = load <2 x i32>, <2 x i32>* %ptr
  ret <2 x i32> %t


}
