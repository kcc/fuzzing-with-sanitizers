




define void @f(i32* nocapture %p) {
entry:
  %a = ptrtoint i32* %p to i64
  %ao = add i64 %a, 25769803792
  %b = inttoptr i64 %ao to i32*
  store volatile i32 0, i32* %b, align 4
  store volatile i32 0, i32* %b, align 4
  ret void
}
