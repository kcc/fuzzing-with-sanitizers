
































define <2 x i32> @simpleVectorDiv(<2 x i32> %A, <2 x i32> %B) nounwind {
entry:
  %div = udiv <2 x i32> %A, %B
  ret <2 x i32> %div
}
