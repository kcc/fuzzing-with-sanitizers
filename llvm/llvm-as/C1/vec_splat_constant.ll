


@baz = common global <16 x i8> zeroinitializer    

define void @foo(<16 x i8> %x) nounwind ssp {
entry:


  %x_addr = alloca <16 x i8>                      
  %temp = alloca <16 x i8>                        
  %"alloca point" = bitcast i32 0 to i32          
  store <16 x i8> %x, <16 x i8>* %x_addr
  store <16 x i8> <i8 0, i8 0, i8 0, i8 14, i8 0, i8 0, i8 0, i8 14, i8 0, i8 0, i8 0, i8 14, i8 0, i8 0, i8 0, i8 14>, <16 x i8>* %temp, align 16
  %0 = load <16 x i8>, <16 x i8>* %x_addr, align 16          
  %1 = load <16 x i8>, <16 x i8>* %temp, align 16            
  %tmp = add <16 x i8> %0, %1                     
  store <16 x i8> %tmp, <16 x i8>* @baz, align 16
  br label %return

return:                                           
  ret void

}
