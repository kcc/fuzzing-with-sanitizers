

define i64 @test0() {



  ret i64 0
}

define i64 @test1() {


  ret i64 1
}

define i64 @test2() {


  ret i64 65535
}

define i64 @test3() {


  ret i64 65536
}

define i64 @test4() {


  ret i64 4294901760
}

define i64 @test5() {


  ret i64 4294967296
}

define i64 @test6() {


  ret i64 281470681743360
}

define i64 @test7() {


  ret i64 281474976710656
}



define i64 @test8() {


  ret i64 4294906420
}

define i64 @test9() {


  ret i64 -1
}

define i64 @test10() {


  ret i64 18446744069720047615
}



@var32 = global i32 0

define void @test11() {


  store i32 0, i32* @var32
  ret void
}

define void @test12() {


  store i32 1, i32* @var32
  ret void
}

define void @test13() {


  store i32 65535, i32* @var32
  ret void
}

define void @test14() {


  store i32 65536, i32* @var32
  ret void
}

define void @test15() {


  store i32 4294901760, i32* @var32
  ret void
}

define void @test16() {


  store i32 -1, i32* @var32
  ret void
}

define i64 @test17() {


  

  ret i64 -3
}
