
declare void @use_addr(i8*)

@addr = global i8* null

define void @test_bigframe() {



  %var1 = alloca i8, i32 20000000
  %var2 = alloca i8, i32 16
  %var3 = alloca i8, i32 20000000











  store volatile i8* %var1, i8** @addr

  %var1plus2 = getelementptr i8, i8* %var1, i32 2
  store volatile i8* %var1plus2, i8** @addr




  store volatile i8* %var2, i8** @addr

  %var2plus2 = getelementptr i8, i8* %var2, i32 2
  store volatile i8* %var2plus2, i8** @addr

  store volatile i8* %var3, i8** @addr

  %var3plus2 = getelementptr i8, i8* %var3, i32 2
  store volatile i8* %var3plus2, i8** @addr






  ret void
}

define void @test_mediumframe() {

  %var1 = alloca i8, i32 1000000
  %var2 = alloca i8, i32 16
  %var3 = alloca i8, i32 1000000



  store volatile i8* %var1, i8** @addr






  store volatile i8* %var2, i8** @addr


  ret void
}
