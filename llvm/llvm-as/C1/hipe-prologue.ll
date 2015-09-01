







declare void @dummy_use(i32*, i32)

define {i32, i32} @test_basic(i32 %hp, i32 %p) {
  
  

  
  

  %mem = alloca i32, i32 10
  call void @dummy_use (i32* %mem, i32 10)
  %1 = insertvalue {i32, i32} undef, i32 %hp, 0
  %2 = insertvalue {i32, i32} %1, i32 %p, 1
  ret {i32, i32} %1
}

define cc 11 {i32, i32} @test_basic_hipecc(i32 %hp, i32 %p) {
  
  
  
  

  

  
  

  
  
  
  

  

  
  

  %mem = alloca i32, i32 10
  call void @dummy_use (i32* %mem, i32 10)
  %1 = insertvalue {i32, i32} undef, i32 %hp, 0
  %2 = insertvalue {i32, i32} %1, i32 %p, 1
  ret {i32, i32} %2
}

define cc 11 {i32,i32,i32} @test_nocall_hipecc(i32 %hp,i32 %p,i32 %x,i32 %y) {
  
  

  
  

  %1 = add i32 %x, %y
  %2 = mul i32 42, %1
  %3 = sub i32 24, %2
  %4 = insertvalue {i32, i32, i32} undef, i32 %hp, 0
  %5 = insertvalue {i32, i32, i32} %4, i32 %p, 1
  %6 = insertvalue {i32, i32, i32} %5, i32 %p, 2
  ret {i32, i32, i32} %6
}
