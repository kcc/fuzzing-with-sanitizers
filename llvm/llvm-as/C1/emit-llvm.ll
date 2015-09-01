























target triple = "x86_64-unknown-linux-gnu"

@g7 = extern_weak global i32


@g8 = external global i32



define hidden void @f1() {
  ret void
}



define hidden void @f2() {
  ret void
}

@llvm.used = appending global [1 x i8*] [ i8* bitcast (void ()* @f2 to i8*)]



define void @f3() {
  call void @f4()
  ret void
}



define linkonce_odr void @f4() {
  ret void
}



define linkonce_odr void @f5() {
  ret void
}
@g5 = global void()* @f5



define linkonce_odr void @f6() unnamed_addr {
  ret void
}
@g6 = global void()* @f6

define i32* @f7() {
  ret i32* @g7
}

define i32* @f8() {
  ret i32* @g8
}













