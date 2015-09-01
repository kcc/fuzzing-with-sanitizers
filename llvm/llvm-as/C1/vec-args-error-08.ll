



declare <1 x fp128> @bar()

define void @foo() {
  %res = call <1 x fp128> @bar ()
  ret void
}


