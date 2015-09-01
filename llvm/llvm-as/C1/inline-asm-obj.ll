






target triple = "x86_64-unknown-linux-gnu"

define void @fj()  {
  call void asm "bsr $0,%eax", "o"(i32 1)
  ret void
}
