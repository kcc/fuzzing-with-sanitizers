

@var = global i1 0

define i32 @test_sextloadi32() {


  %val = load i1, i1* @var
  %ret = sext i1 %val to i32



  ret i32 %ret

}

define i64 @test_sextloadi64() {


  %val = load i1, i1* @var
  %ret = sext i1 %val to i64



  ret i64 %ret

}

define i32 @test_zextloadi32() {





  %val = load i1, i1* @var
  %ret = zext i1 %val to i32


  ret i32 %ret

}

define i64 @test_zextloadi64() {





  %val = load i1, i1* @var
  %ret = zext i1 %val to i64


  ret i64 %ret

}
