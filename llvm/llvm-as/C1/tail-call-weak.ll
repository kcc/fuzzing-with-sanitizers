



declare i8* @f()
declare extern_weak i8* @g(i8*)



define void @test() {
  %call = tail call i8* @f()
  %call1 = tail call i8* @g(i8* %call)
  ret void
}





