

@zed = external hidden constant i32

define available_externally hidden void @baz() {
  ret void
}

define hidden void @foo() nounwind {
entry:
  call void @bar(i32* @zed)
  call void @baz()
  ret void
}

declare hidden void @bar(i32*)




