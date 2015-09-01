

define float @test_dup_sv2S(<2 x float> %v) #0 {
 
 
 
 %tmp1 = extractelement <2 x float> %v, i32 1
 ret float  %tmp1
}

define float @test_dup_sv2S_0(<2 x float> %v) #0 {
 
 
 
 
 %tmp1 = extractelement <2 x float> %v, i32 0
 ret float  %tmp1
}

define float @test_dup_sv4S(<4 x float> %v) #0 {
 
 
 
 %tmp1 = extractelement <4 x float> %v, i32 1
 ret float  %tmp1
}

define float @test_dup_sv4S_0(<4 x float> %v) #0 {
 
 
 
 
 %tmp1 = extractelement <4 x float> %v, i32 0
 ret float  %tmp1
}

define double @test_dup_dvD(<1 x double> %v) #0 {
 
 
 
 
 %tmp1 = extractelement <1 x double> %v, i32 0
 ret double  %tmp1
}

define double @test_dup_dv2D(<2 x double> %v) #0 {
 
 
 
 %tmp1 = extractelement <2 x double> %v, i32 1
 ret double  %tmp1
}

define double @test_dup_dv2D_0(<2 x double> %v) #0 {
 
 
 
 
 %tmp1 = extractelement <2 x double> %v, i32 0
 ret double  %tmp1
}

define half @test_dup_hv8H(<8 x half> %v) #0 {
 
 
 
 %tmp1 = extractelement <8 x half> %v, i32 1
 ret half  %tmp1
}

define half @test_dup_hv8H_0(<8 x half> %v) #0 {
 
 
 
 
 %tmp1 = extractelement <8 x half> %v, i32 0
 ret half  %tmp1
}

define <1 x i8> @test_vector_dup_bv16B(<16 x i8> %v1) #0 {
 
 
 
 
 %shuffle.i = shufflevector <16 x i8> %v1, <16 x i8> undef, <1 x i32> <i32 14> 
 ret <1 x i8> %shuffle.i
}

define <1 x i8> @test_vector_dup_bv8B(<8 x i8> %v1) #0 {
 
 
 
 %shuffle.i = shufflevector <8 x i8> %v1, <8 x i8> undef, <1 x i32> <i32 7> 
 ret <1 x i8> %shuffle.i
}

define <1 x i16> @test_vector_dup_hv8H(<8 x i16> %v1) #0 {
 
 
 
 
 %shuffle.i = shufflevector <8 x i16> %v1, <8 x i16> undef, <1 x i32> <i32 7> 
 ret <1 x i16> %shuffle.i
}

define <1 x i16> @test_vector_dup_hv4H(<4 x i16> %v1) #0 {
 
 
 
 %shuffle.i = shufflevector <4 x i16> %v1, <4 x i16> undef, <1 x i32> <i32 3> 
 ret <1 x i16> %shuffle.i
}

define <1 x i32> @test_vector_dup_sv4S(<4 x i32> %v1) #0 {
 
 
 
 
 %shuffle = shufflevector <4 x i32> %v1, <4 x i32> undef, <1 x i32> <i32 3> 
 ret <1 x i32> %shuffle
}

define <1 x i32> @test_vector_dup_sv2S(<2 x i32> %v1) #0 {
 
 
 
 %shuffle = shufflevector <2 x i32> %v1, <2 x i32> undef, <1 x i32> <i32 1> 
 ret <1 x i32> %shuffle
}

define <1 x i64> @test_vector_dup_dv2D(<2 x i64> %v1) #0 {
 
 
 
 %shuffle.i = shufflevector <2 x i64> %v1, <2 x i64> undef, <1 x i32> <i32 1> 
 ret <1 x i64> %shuffle.i
}

define <1 x i64> @test_vector_copy_dup_dv2D(<1 x i64> %a, <2 x i64> %c) #0 {
  
  
  
  %vget_lane = extractelement <2 x i64> %c, i32 1
  %vset_lane = insertelement <1 x i64> undef, i64 %vget_lane, i32 0
  ret <1 x i64> %vset_lane
}



define i32 @test_out_of_range_extract(<4 x i32> %vec) {


  %elt = extractelement <4 x i32> %vec, i32 4
  ret i32 %elt
}



define void @test_out_of_range_insert(<4 x i32> %vec, i32 %elt) {


  insertelement <4 x i32> %vec, i32 %elt, i32 4
  ret void
}

attributes #0 = { nounwind }
