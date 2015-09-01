






define i32 @mulhs(i32 %a, i32 %b) nounwind {
entry:
        %tmp.1 = sext i32 %a to i64             
        %tmp.3 = sext i32 %b to i64             
        %tmp.4 = mul i64 %tmp.3, %tmp.1         
        %tmp.6 = lshr i64 %tmp.4, 32            
        %tmp.7 = trunc i64 %tmp.6 to i32                
        ret i32 %tmp.7
}

