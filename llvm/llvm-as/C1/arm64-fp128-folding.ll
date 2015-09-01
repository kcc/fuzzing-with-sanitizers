
declare void @bar(i8*, i8*, i32*)




define fp128 @test_folding() {

  %l = alloca i32
  store i32 42, i32* %l
  %val = load i32, i32* %l
  %fpval = sitofp i32 %val to fp128
  
  

  ret fp128 %fpval
}
