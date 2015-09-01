

@var32 = global i32 0
@var64 = global i64 0

define void @test_zr() {


  store i32 0, i32* @var32

  store i64 0, i64* @var64


  ret void

}

define void @test_sp(i32 %val) {





  %addr = getelementptr i32, i32* null, i64 0
  store i32 %val, i32* %addr


  ret void

}
