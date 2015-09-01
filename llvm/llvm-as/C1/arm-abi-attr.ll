














define void @g() {






  %c = alloca i8, align 8
  call void @f(i8* %c)
  ret void
}

declare void @f(i8*)
