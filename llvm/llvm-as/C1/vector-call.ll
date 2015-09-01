

target triple = "nvptx-unknown-cuda"

declare void @bar(<4 x i32>)


define void @foo(<4 x i32> %a) {

  tail call void @bar(<4 x i32> %a)
  ret void
}
