





















define i32 @caller0() #0 {
entry:
  tail call void @callee0()
  ret i32 0
}













define i32 @caller1() {
entry:
  tail call void @callee0()
  ret i32 0
}

declare void @callee0()

attributes #0 = { "target-features"="+long-calls" }
