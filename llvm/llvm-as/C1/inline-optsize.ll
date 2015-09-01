







@a = global i32 4



define i32 @inner() {
  %a1 = load volatile i32, i32* @a
  %x1 = add i32 %a1,  %a1
  %a2 = load volatile i32, i32* @a
  %x2 = add i32 %x1, %a2
  %a3 = load volatile i32, i32* @a
  %x3 = add i32 %x2, %a3
  %a4 = load volatile i32, i32* @a
  %x4 = add i32 %x3, %a4
  %a5 = load volatile i32, i32* @a
  %x5 = add i32 %x3, %a5
  ret i32 %x5
}




define i32 @outer() optsize {
   %r = call i32 @inner()
   ret i32 %r
}
