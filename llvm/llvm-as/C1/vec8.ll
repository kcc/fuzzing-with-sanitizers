

target triple = "nvptx-unknown-cuda"


define void @foo(<8 x i8> %a, i8* %b) {
  %t0 = extractelement <8 x i8> %a, i32 0


  store i8 %t0, i8* %b
  ret void
}

