







target triple = "x86_64-pc-linux"

define void @f1() {


  %foo = alloca i8, align 32
  ret void
}

define void @f2(i1 *%x, i16 *%y) {


  %a = load i1, i1* %x
  %b = zext i1 %a to i16
  store i16 %b, i16* %y
  ret void
}

define i32 @f3(i1 *%x) {


  %a = load i1, i1* %x
  %b = zext i1 %a to i32
  ret i32 %b
}

define i64 @f4(i1 *%x) {


  %a = load i1, i1* %x
  %b = zext i1 %a to i64
  ret i64 %b
}
