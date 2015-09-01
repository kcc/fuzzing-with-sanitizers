



declare <1 x i128> @bar()

define void @foo() {
  %res = call <1 x i128> @bar ()
  ret void
}


