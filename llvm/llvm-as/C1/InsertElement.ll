


define i32 @test1() {
  %A = bitcast i32 2139171423 to float
  %B = insertelement <1 x float> undef, float %A, i32 0
  %C = extractelement <1 x float> %B, i32 0
  %D = bitcast float %C to i32
  ret i32 %D

}


define <4 x i64> @insertelement() {
  %vec1 = insertelement <4 x i64> undef, i64 -1, i32 0
  %vec2 = insertelement <4 x i64> %vec1, i64 -2, i32 1
  %vec3 = insertelement <4 x i64> %vec2, i64 -3, i32 2
  %vec4 = insertelement <4 x i64> %vec3, i64 -4, i32 3
  
  ret <4 x i64> %vec4
}


define <4 x i64> @insertelement_undef() {
  %vec1 = insertelement <4 x i64> undef, i64 -1, i32 0
  %vec2 = insertelement <4 x i64> %vec1, i64 -2, i32 1
  %vec3 = insertelement <4 x i64> %vec2, i64 -3, i32 2
  %vec4 = insertelement <4 x i64> %vec3, i64 -4, i32 3
  %vec5 = insertelement <4 x i64> %vec3, i64 -5, i32 4
  
  ret <4 x i64> %vec5
}
