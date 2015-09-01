


declare <2 x i32> @llvm.cttz.v2i32(<2 x i32>, i1)

define <2 x i32> @cttzv2i32(<2 x i32> %x) {
entry:




























  %ret = call <2 x i32> @llvm.cttz.v2i32(<2 x i32> %x, i1 true)
  ret <2 x i32> %ret
}

