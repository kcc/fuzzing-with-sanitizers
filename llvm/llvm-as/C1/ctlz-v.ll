


declare <2 x i32> @llvm.ctlz.v2i32(<2 x i32>, i1)

define <2 x i32> @ctlzv2i32(<2 x i32> %x) {
entry:








  %ret = call <2 x i32> @llvm.ctlz.v2i32(<2 x i32> %x, i1 true)
  ret <2 x i32> %ret
}

