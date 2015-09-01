

@var32 = global [3 x i32] zeroinitializer
@var64 = global [3 x i64] zeroinitializer
@var32_align64 = global [3 x i32] zeroinitializer, align 8
@alias = alias [3 x i32]* @var32_align64

define i64 @test_align32() {

  %addr = bitcast [3 x i32]* @var32 to i64*

  
  
  %val = load i64, i64* %addr




  ret i64 %val
}

define i64 @test_align64() {

  %addr = bitcast [3 x i64]* @var64 to i64*

  
  
  %val = load i64, i64* %addr




  ret i64 %val
}

define i64 @test_var32_align64() {

  %addr = bitcast [3 x i32]* @var32_align64 to i64*

  
  
  %val = load i64, i64* %addr




  ret i64 %val
}

define i64 @test_var32_alias() {

  %addr = bitcast [3 x i32]* @alias to i64*

  
  %val = load i64, i64* %addr




  ret i64 %val
}

@yet_another_var = external global {i32, i32}

define i64 @test_yet_another_var() {


  
  
  
  %val = load i64, i64* bitcast({i32, i32}* @yet_another_var to i64*)



  ret i64 %val
}

define i64()* @test_functions() {

  ret i64()* @test_yet_another_var


}
