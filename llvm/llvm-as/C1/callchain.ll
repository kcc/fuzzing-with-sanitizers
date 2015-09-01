

target triple = "nvptx"

define void @foo(i8* %ptr) {
  %fnptr = bitcast i8* %ptr to void ()*

  tail call void %fnptr()
  ret void
}
