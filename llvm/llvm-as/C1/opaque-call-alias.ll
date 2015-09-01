









define void @test(i8* %Arg) {
  %Noalias = alloca i8
  %Escapes = alloca i8
  call void @set_thepointer(i8* %Escapes)
  %Retrieved = call i8* @get_thepointer()
  ret void
}

declare void @set_thepointer(i8* %P)
declare i8* @get_thepointer()
