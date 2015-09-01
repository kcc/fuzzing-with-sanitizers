


define weak void @fd() {
  call void @fr(i32* @gd, i32* @gr)
  ret void
}


declare hidden void @test_hidden_declaration()
define hidden void @test_hidden() {
  call void @test_hidden_declaration()
  unreachable
}


define protected void @test_protected() {
  unreachable
}






@array = weak global [2 x i32] zeroinitializer






@ac = common global [2 x i32] zeroinitializer



@gd = weak global i32 0



@gc = common global i32 0




@gr = extern_weak global i32


declare extern_weak void @fr(i32*, i32*)

