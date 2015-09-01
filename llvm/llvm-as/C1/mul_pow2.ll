




define i32 @test2(i32 %x) {



  %mul = shl nsw i32 %x, 1
  ret i32 %mul
}

define i32 @test3(i32 %x) {



  %mul = mul nsw i32 %x, 3
  ret i32 %mul
}

define i32 @test4(i32 %x) {



  %mul = shl nsw i32 %x, 2
  ret i32 %mul
}

define i32 @test5(i32 %x) {




  %mul = mul nsw i32 %x, 5
  ret i32 %mul
}

define i32 @test7(i32 %x) {




  %mul = mul nsw i32 %x, 7
  ret i32 %mul
}

define i32 @test8(i32 %x) {



  %mul = shl nsw i32 %x, 3
  ret i32 %mul
}

define i32 @test9(i32 %x) {



  %mul = mul nsw i32 %x, 9
  ret i32 %mul
}




define i32 @ntest2(i32 %x) {



  %mul = mul nsw i32 %x, -2
  ret i32 %mul
}

define i32 @ntest3(i32 %x) {



  %mul = mul nsw i32 %x, -3
  ret i32 %mul
}

define i32 @ntest4(i32 %x) {



  %mul = mul nsw i32 %x, -4
  ret i32 %mul
}

define i32 @ntest5(i32 %x) {



  %mul = mul nsw i32 %x, -5
  ret i32 %mul
}

define i32 @ntest7(i32 %x) {



  %mul = mul nsw i32 %x, -7
  ret i32 %mul
}

define i32 @ntest8(i32 %x) {



  %mul = mul nsw i32 %x, -8
  ret i32 %mul
}

define i32 @ntest9(i32 %x) {




  %mul = mul nsw i32 %x, -9
  ret i32 %mul
}
