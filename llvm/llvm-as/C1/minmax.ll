



define <4 x i32> @t1(<4 x i32> %a, <4 x i32> %b) {
  %t1 = icmp sgt <4 x i32> %a, %b
  %t2 = select <4 x i1> %t1, <4 x i32> %a, <4 x i32> %b
  ret <4 x i32> %t2
}



define <4 x i32> @t2(<4 x i32> %a, <4 x i32> %b) {
  %t1 = icmp slt <4 x i32> %a, %b
  %t2 = select <4 x i1> %t1, <4 x i32> %a, <4 x i32> %b
  ret <4 x i32> %t2
}



define <4 x i32> @t3(<4 x i32> %a, <4 x i32> %b) {
  %t1 = icmp ugt <4 x i32> %a, %b
  %t2 = select <4 x i1> %t1, <4 x i32> %a, <4 x i32> %b
  ret <4 x i32> %t2
}



define <4 x i32> @t4(<4 x i32> %a, <4 x i32> %b) {
  %t1 = icmp ult <4 x i32> %a, %b
  %t2 = select <4 x i1> %t1, <4 x i32> %a, <4 x i32> %b
  ret <4 x i32> %t2
}



define <2 x i32> @t5(<2 x i32> %a, <2 x i32> %b) {
  %t1 = icmp sgt <2 x i32> %a, %b
  %t2 = select <2 x i1> %t1, <2 x i32> %a, <2 x i32> %b
  ret <2 x i32> %t2
}



define <2 x i32> @t6(<2 x i32> %a, <2 x i32> %b) {
  %t1 = icmp slt <2 x i32> %a, %b
  %t2 = select <2 x i1> %t1, <2 x i32> %a, <2 x i32> %b
  ret <2 x i32> %t2
}



define <2 x i32> @t7(<2 x i32> %a, <2 x i32> %b) {
  %t1 = icmp ugt <2 x i32> %a, %b
  %t2 = select <2 x i1> %t1, <2 x i32> %a, <2 x i32> %b
  ret <2 x i32> %t2
}



define <2 x i32> @t8(<2 x i32> %a, <2 x i32> %b) {
  %t1 = icmp ult <2 x i32> %a, %b
  %t2 = select <2 x i1> %t1, <2 x i32> %a, <2 x i32> %b
  ret <2 x i32> %t2
}



define <8 x i16> @t9(<8 x i16> %a, <8 x i16> %b) {
  %t1 = icmp sgt <8 x i16> %a, %b
  %t2 = select <8 x i1> %t1, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %t2
}



define <8 x i16> @t10(<8 x i16> %a, <8 x i16> %b) {
  %t1 = icmp slt <8 x i16> %a, %b
  %t2 = select <8 x i1> %t1, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %t2
}



define <8 x i16> @t11(<8 x i16> %a, <8 x i16> %b) {
  %t1 = icmp ugt <8 x i16> %a, %b
  %t2 = select <8 x i1> %t1, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %t2
}



define <8 x i16> @t12(<8 x i16> %a, <8 x i16> %b) {
  %t1 = icmp ult <8 x i16> %a, %b
  %t2 = select <8 x i1> %t1, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %t2
}



define <4 x i16> @t13(<4 x i16> %a, <4 x i16> %b) {
  %t1 = icmp sgt <4 x i16> %a, %b
  %t2 = select <4 x i1> %t1, <4 x i16> %a, <4 x i16> %b
  ret <4 x i16> %t2
}



define <4 x i16> @t14(<4 x i16> %a, <4 x i16> %b) {
  %t1 = icmp slt <4 x i16> %a, %b
  %t2 = select <4 x i1> %t1, <4 x i16> %a, <4 x i16> %b
  ret <4 x i16> %t2
}



define <4 x i16> @t15(<4 x i16> %a, <4 x i16> %b) {
  %t1 = icmp ugt <4 x i16> %a, %b
  %t2 = select <4 x i1> %t1, <4 x i16> %a, <4 x i16> %b
  ret <4 x i16> %t2
}



define <4 x i16> @t16(<4 x i16> %a, <4 x i16> %b) {
  %t1 = icmp ult <4 x i16> %a, %b
  %t2 = select <4 x i1> %t1, <4 x i16> %a, <4 x i16> %b
  ret <4 x i16> %t2
}



define <16 x i8> @t17(<16 x i8> %a, <16 x i8> %b) {
  %t1 = icmp sgt <16 x i8> %a, %b
  %t2 = select <16 x i1> %t1, <16 x i8> %a, <16 x i8> %b
  ret <16 x i8> %t2
}



define <16 x i8> @t18(<16 x i8> %a, <16 x i8> %b) {
  %t1 = icmp slt <16 x i8> %a, %b
  %t2 = select <16 x i1> %t1, <16 x i8> %a, <16 x i8> %b
  ret <16 x i8> %t2
}



define <16 x i8> @t19(<16 x i8> %a, <16 x i8> %b) {
  %t1 = icmp ugt <16 x i8> %a, %b
  %t2 = select <16 x i1> %t1, <16 x i8> %a, <16 x i8> %b
  ret <16 x i8> %t2
}



define <16 x i8> @t20(<16 x i8> %a, <16 x i8> %b) {
  %t1 = icmp ult <16 x i8> %a, %b
  %t2 = select <16 x i1> %t1, <16 x i8> %a, <16 x i8> %b
  ret <16 x i8> %t2
}



define <8 x i8> @t21(<8 x i8> %a, <8 x i8> %b) {
  %t1 = icmp sgt <8 x i8> %a, %b
  %t2 = select <8 x i1> %t1, <8 x i8> %a, <8 x i8> %b
  ret <8 x i8> %t2
}



define <8 x i8> @t22(<8 x i8> %a, <8 x i8> %b) {
  %t1 = icmp slt <8 x i8> %a, %b
  %t2 = select <8 x i1> %t1, <8 x i8> %a, <8 x i8> %b
  ret <8 x i8> %t2
}



define <8 x i8> @t23(<8 x i8> %a, <8 x i8> %b) {
  %t1 = icmp ugt <8 x i8> %a, %b
  %t2 = select <8 x i1> %t1, <8 x i8> %a, <8 x i8> %b
  ret <8 x i8> %t2
}



define <8 x i8> @t24(<8 x i8> %a, <8 x i8> %b) {
  %t1 = icmp ult <8 x i8> %a, %b
  %t2 = select <8 x i1> %t1, <8 x i8> %a, <8 x i8> %b
  ret <8 x i8> %t2
}
