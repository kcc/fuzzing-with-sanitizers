

define <2 x i64> @bar(<2 x i64>* %p) nounwind {
  %t = load <2 x i64>, <2 x i64>* %p, align 8
  ret <2 x i64> %t
}
