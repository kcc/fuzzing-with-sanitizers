

declare void @use(i8* %a)

define void @helper() {
  %a = alloca i8
  call void @use(i8* %a)
  ret void
}


define void @test() {





  call void @helper()


  ret void
}

