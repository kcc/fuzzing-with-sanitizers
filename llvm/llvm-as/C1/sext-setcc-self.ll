

define <4 x i32> @test_ueq(<4 x float> %in) {
entry:
  
  
  %0 = fcmp ueq <4 x float> %in, %in
  %1 = sext <4 x i1> %0 to <4 x i32>
  ret <4 x i32> %1
}

define <4 x i32> @test_uge(<4 x float> %in) {
entry:
  
  
  %0 = fcmp uge <4 x float> %in, %in
  %1 = sext <4 x i1> %0 to <4 x i32>
  ret <4 x i32> %1
}

define <4 x i32> @test_ule(<4 x float> %in) {
entry:
  
  
  %0 = fcmp ule <4 x float> %in, %in
  %1 = sext <4 x i1> %0 to <4 x i32>
  ret <4 x i32> %1
}

define <4 x i32> @test_one(<4 x float> %in) {
entry:
  
  
  %0 = fcmp one <4 x float> %in, %in
  %1 = sext <4 x i1> %0 to <4 x i32>
  ret <4 x i32> %1
}

define <4 x i32> @test_ogt(<4 x float> %in) {
entry:
  
  
  %0 = fcmp ogt <4 x float> %in, %in
  %1 = sext <4 x i1> %0 to <4 x i32>
  ret <4 x i32> %1
}

define <4 x i32> @test_olt(<4 x float> %in) {
entry:
  
  
  %0 = fcmp olt <4 x float> %in, %in
  %1 = sext <4 x i1> %0 to <4 x i32>
  ret <4 x i32> %1
}
