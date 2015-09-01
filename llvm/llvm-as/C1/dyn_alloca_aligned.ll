
define i32 @A(i32 %Size) {



  %A = alloca i8, i32 %Size, align 128
  %A_addr = ptrtoint i8* %A to i32
  ret i32 %A_addr
}
