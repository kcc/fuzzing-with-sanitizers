



define i32 @smulhi(i32 %x, i32 %y) nounwind {








        %tmp = sext i32 %x to i64               
        %tmp1 = sext i32 %y to i64              
        %tmp2 = mul i64 %tmp1, %tmp             
        %tmp3 = lshr i64 %tmp2, 32              
        %tmp3.upgrd.1 = trunc i64 %tmp3 to i32          
        ret i32 %tmp3.upgrd.1
}

define i32 @umulhi(i32 %x, i32 %y) nounwind {








        %tmp = zext i32 %x to i64               
        %tmp1 = zext i32 %y to i64              
        %tmp2 = mul i64 %tmp1, %tmp             
        %tmp3 = lshr i64 %tmp2, 32              
        %tmp3.upgrd.2 = trunc i64 %tmp3 to i32          
        ret i32 %tmp3.upgrd.2
}


define i32 @t3(i32 %a) nounwind {









entry:
  %tmp1 = mul nsw i32 %a, 3
  %tmp2 = sdiv i32 %tmp1, 23
  ret i32 %tmp2
}
