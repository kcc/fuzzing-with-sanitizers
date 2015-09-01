




define <2 x i256> @test_sext1() {
  %Se = sext <2 x i8> <i8 -100, i8 -99> to <2 x i256>
  %Shuff = shufflevector <2 x i256> zeroinitializer, <2 x i256> %Se, <2 x i32> <i32 1, i32 3>
  ret <2 x i256> %Shuff

  
  
  
  
  

  
  
  
  
  
  
  
  
  
}

define <2 x i256> @test_sext2() {
  %Se = sext <2 x i128> <i128 -2000, i128 -1999> to <2 x i256>
  %Shuff = shufflevector <2 x i256> zeroinitializer, <2 x i256> %Se, <2 x i32> <i32 1, i32 3>
  ret <2 x i256> %Shuff

  
  
  
  
  

  
  
  
  
  
  
  
  
  
}

define <2 x i256> @test_zext1() {
  %Se = zext <2 x i8> <i8 -1, i8 -2> to <2 x i256>
  %Shuff = shufflevector <2 x i256> zeroinitializer, <2 x i256> %Se, <2 x i32> <i32 1, i32 3>
  ret <2 x i256> %Shuff

  
  
  
  
  

  
  
  
  
  
  
  
  
  
}

define <2 x i256> @test_zext2() {
  %Se = zext <2 x i128> <i128 -1, i128 -2> to <2 x i256>
  %Shuff = shufflevector <2 x i256> zeroinitializer, <2 x i256> %Se, <2 x i32> <i32 1, i32 3>
  ret <2 x i256> %Shuff

  
  
  
  
  

  
  
  
  
  
  
  
  
  
}
