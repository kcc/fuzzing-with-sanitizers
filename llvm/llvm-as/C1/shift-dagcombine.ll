

define void @ashr_v4i32(<4 x i32>* %c) nounwind {
  

  %1 = ashr <4 x i32> <i32 1, i32 2, i32 4, i32 8>,
                      <i32 0, i32 1, i32 2, i32 3>
  
  
  
  store volatile <4 x i32> %1, <4 x i32>* %c
  

  %2 = ashr <4 x i32> <i32 -2, i32 -4, i32 -8, i32 -16>,
                      <i32 0, i32 1, i32 2, i32 3>
  
  
  
  store volatile <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @lshr_v4i32(<4 x i32>* %c) nounwind {
  

  %1 = lshr <4 x i32> <i32 1, i32 2, i32 4, i32 8>,
                      <i32 0, i32 1, i32 2, i32 3>
  
  
  
  store volatile <4 x i32> %1, <4 x i32>* %c
  

  %2 = lshr <4 x i32> <i32 -2, i32 -4, i32 -8, i32 -16>,
                      <i32 0, i32 1, i32 2, i32 3>
  
  
  
  
  store volatile <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @shl_v4i32(<4 x i32>* %c) nounwind {
  

  %1 = shl <4 x i32> <i32 8, i32 4, i32 2, i32 1>,
                     <i32 0, i32 1, i32 2, i32 3>
  
  
  
  store volatile <4 x i32> %1, <4 x i32>* %c
  

  %2 = shl <4 x i32> <i32 -8, i32 -4, i32 -2, i32 -1>,
                     <i32 0, i32 1, i32 2, i32 3>
  
  
  
  store volatile <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}
