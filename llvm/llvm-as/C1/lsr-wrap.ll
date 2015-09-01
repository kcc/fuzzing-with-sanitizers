







@g_19 = common global i32 0                       

declare i32 @func_8(i8 zeroext) nounwind

declare i32 @func_3(i8 signext) nounwind

define void @func_1() nounwind {
entry:
  br label %bb

bb:                                               
  %indvar = phi i16 [ 0, %entry ], [ %indvar.next, %bb ] 
  %tmp = sub i16 0, %indvar                       
  %tmp27 = trunc i16 %tmp to i8                   
  %tmp1 = load i32, i32* @g_19, align 4                
  %tmp2 = add i32 %tmp1, 1                        
  store i32 %tmp2, i32* @g_19, align 4
  %tmp3 = trunc i32 %tmp1 to i8                   
  %tmp4 = tail call i32 @func_8(i8 zeroext %tmp3) nounwind 
  %tmp5 = shl i8 %tmp27, 2                        
  %tmp6 = add i8 %tmp5, -112                      
  %tmp7 = tail call i32 @func_3(i8 signext %tmp6) nounwind 
  %indvar.next = add i16 %indvar, 1               
  %exitcond = icmp eq i16 %indvar.next, -28       
  br i1 %exitcond, label %return, label %bb

return:                                           
  ret void
}
