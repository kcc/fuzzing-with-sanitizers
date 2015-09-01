

define i32 @fptoint(float %a) nounwind {
entry:

  fptosi float %a to i32		
  ret i32 %0
}

define i32 @fptouint(float %a) nounwind {
entry:



  fptoui float %a to i32		
  ret i32 %0
}
