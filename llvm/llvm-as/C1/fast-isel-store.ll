


define i32 @test_store_32(i32* nocapture %addr, i32 %value) {
entry:
  store i32 %value, i32* %addr, align 1
  ret i32 %value
}



define i16 @test_store_16(i16* nocapture %addr, i16 %value) {
entry:
  store i16 %value, i16* %addr, align 1
  ret i16 %value
}



define <4 x i32> @test_store_4xi32(<4 x i32>* nocapture %addr, <4 x i32> %value, <4 x i32> %value2) {


  %foo = add <4 x i32> %value, %value2 
  store <4 x i32> %foo, <4 x i32>* %addr, align 1
  ret <4 x i32> %foo
}

define <4 x i32> @test_store_4xi32_aligned(<4 x i32>* nocapture %addr, <4 x i32> %value, <4 x i32> %value2) {


  %foo = add <4 x i32> %value, %value2 
  store <4 x i32> %foo, <4 x i32>* %addr, align 16
  ret <4 x i32> %foo
}

define <4 x float> @test_store_4xf32(<4 x float>* nocapture %addr, <4 x float> %value) {


  store <4 x float> %value, <4 x float>* %addr, align 1
  ret <4 x float> %value
}

define <4 x float> @test_store_4xf32_aligned(<4 x float>* nocapture %addr, <4 x float> %value) {


  store <4 x float> %value, <4 x float>* %addr, align 16
  ret <4 x float> %value
}

define <2 x double> @test_store_2xf64(<2 x double>* nocapture %addr, <2 x double> %value, <2 x double> %value2) {


  %foo = fadd <2 x double> %value, %value2 
  store <2 x double> %foo, <2 x double>* %addr, align 1
  ret <2 x double> %foo
}

define <2 x double> @test_store_2xf64_aligned(<2 x double>* nocapture %addr, <2 x double> %value, <2 x double> %value2) {


  %foo = fadd <2 x double> %value, %value2 
  store <2 x double> %foo, <2 x double>* %addr, align 16
  ret <2 x double> %foo
}
