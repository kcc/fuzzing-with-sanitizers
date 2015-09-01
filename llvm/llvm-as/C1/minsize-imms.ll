


define i32 @test_mov() minsize {



  ret i32 255
}

define i32 @test_mov_mvn() minsize {









  ret i32 4294967092
}

define i32 @test_mov_lsl() minsize {









  ret i32 589824
}

define i32 @test_movw() minsize {











 ret i32 65535
}

define i32 @test_regress1() {



  ret i32 16253176
}
