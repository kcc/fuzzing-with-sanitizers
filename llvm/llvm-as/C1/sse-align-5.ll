

define <2 x i64> @bar(<2 x i64>* %p) nounwind {
  %t = load <2 x i64>, <2 x i64>* %p
  ret <2 x i64> %t
}
