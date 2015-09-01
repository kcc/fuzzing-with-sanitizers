









define void @short2_int_swap(<2 x i16>* nocapture %b, i32* nocapture %c) nounwind {
entry:
  %0 = load <2 x i16>, <2 x i16>* %b, align 2                
  %1 = load i32, i32* %c, align 4                      
  %tmp1 = bitcast i32 %1 to <2 x i16>             
  store <2 x i16> %tmp1, <2 x i16>* %b, align 2
  %tmp5 = bitcast <2 x i16> %0 to <1 x i32>       
  %tmp3 = extractelement <1 x i32> %tmp5, i32 0   
  store i32 %tmp3, i32* %c, align 4
  ret void
}
