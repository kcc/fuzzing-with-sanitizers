


define i32 @p1(i8 %c, i16 %s) {
entry:
        %tmp = sext i8 %c to i32                
        %tmp1 = sext i16 %s to i32              
        %tmp2 = add i32 %tmp1, %tmp             
        ret i32 %tmp2
}
