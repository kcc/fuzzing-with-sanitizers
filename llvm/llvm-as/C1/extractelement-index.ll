




define i8 @extractelement_index_1(<32 x i8> %a) nounwind {
  
  
  %b = extractelement <32 x i8> %a, i256 1
  ret i8 %b
}


define i32 @extractelement_index_2(<8 x i32> %a) nounwind {
  
  
  
  %b = extractelement <8 x i32> %a, i64 7
  ret i32 %b
}


define i32 @extractelement_index_3(<8 x i32> %a) nounwind {
  
  %b = extractelement <8 x i32> %a, i64 15
  ret i32 %b
}


define i32 @extractelement_index_4(<8 x i32> %a) nounwind {
  
  
  
  %b = extractelement <8 x i32> %a, i256 4
  ret i32 %b
}


define i8 @extractelement_index_5(<32 x i8> %a, i256 %i) nounwind {
  
  
  %b = extractelement <32 x i8> %a, i256 %i
  ret i8 %b
}


define i8 @extractelement_index_6(<32 x i8> %a) nounwind {
  
  %b = extractelement <32 x i8> %a, i256 -1
  ret i8 %b
}