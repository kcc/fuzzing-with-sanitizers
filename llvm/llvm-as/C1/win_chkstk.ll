














define i32 @main4k() nounwind {
entry:







  %array4096 = alloca [4096 x i8], align 16       
  ret i32 0
}



define i32 @main128() nounwind {
entry:















  %array128 = alloca [128 x i8], align 16         
  ret i32 0
}



define x86_64_win64cc i32 @main4k_win64() nounwind {
entry:







  %array4096 = alloca [4096 x i8], align 16       
  ret i32 0
}
