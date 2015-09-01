



define void @foo(i64* %ptr) {
  %r11 = load i64, i64* %ptr, align 8
  %r12 = or i64 16, %r11
  store i64 %r12, i64* %ptr, align 8
  ret void
}
