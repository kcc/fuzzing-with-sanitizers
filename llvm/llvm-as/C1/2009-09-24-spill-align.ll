


define void @test_vget_lanep16() nounwind {
entry:
  %arg0_poly16x4_t = alloca <4 x i16>             
  %out_poly16_t = alloca i16                      
  %"alloca point" = bitcast i32 0 to i32          

  %0 = load <4 x i16>, <4 x i16>* %arg0_poly16x4_t, align 8  
  %1 = extractelement <4 x i16> %0, i32 1         
  store i16 %1, i16* %out_poly16_t, align 2
  br label %return

return:                                           
  ret void
}
