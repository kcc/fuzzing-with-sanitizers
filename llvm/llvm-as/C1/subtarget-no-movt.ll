




















define i32 @foo0(i32 %a) #0 {
  %1 = xor i32 -1998730207, %a
  ret i32 %1
}














define i32 @foo1(i32 %a) {
  %1 = xor i32 -1998730207, %a
  ret i32 %1
}

attributes #0 = { "target-features"="+no-movt" }
