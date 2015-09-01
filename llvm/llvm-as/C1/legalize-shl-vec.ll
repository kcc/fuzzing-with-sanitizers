

define <2 x i256> @test_shl(<2 x i256> %In) {
  %Amt = insertelement <2 x i256> undef, i256 -1, i32 0
  %Out = shl <2 x i256> %In, %Amt
  ret <2 x i256> %Out

  
  
  
  
  
  
  
  
  
  
}

define <2 x i256> @test_srl(<2 x i256> %In) {
  %Amt = insertelement <2 x i256> undef, i256 -1, i32 0
  %Out = lshr <2 x i256> %In, %Amt
  ret <2 x i256> %Out

  
  
  
  
  
  
  
  
  
  
}

define <2 x i256> @test_sra(<2 x i256> %In) {
  %Amt = insertelement <2 x i256> undef, i256 -1, i32 0
  %Out = ashr <2 x i256> %In, %Amt
  ret <2 x i256> %Out

  
  
}
