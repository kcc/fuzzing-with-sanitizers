

target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:16:32-n8:16"

@y = common global i16 0, align 2
@x = common global i16 0, align 2








define void @f() {
entry:
  %0 = load i16, i16* @y, align 2
  store i16 %0, i16* @x, align 2
  ret void
}
