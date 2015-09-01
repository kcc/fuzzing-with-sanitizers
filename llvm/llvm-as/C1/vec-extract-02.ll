





define i32 @f1(<4 x i32> *%ptr, i32 %index) {




  %vec = load <4 x i32>, <4 x i32> *%ptr
  %res = extractelement <4 x i32> %vec, i32 %index
  ret i32 %res
}
