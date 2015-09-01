















define i32 @func_attr(i32 %a) #0 {
entry:
  %call = tail call i32 @callee(i32 %a)
  ret i32 %call
}










define i32 @func_noattr(i32 %a) {
entry:
  %call = tail call i32 @callee(i32 %a)
  ret i32 %call
}

declare i32 @callee(i32)

attributes #0 = { "disable-tail-calls"="true" }
