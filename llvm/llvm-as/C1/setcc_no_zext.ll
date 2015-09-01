





define i32 @setcc_one_or_zero(i32* %a) {
entry:
        %tmp.1 = icmp ne i32* %a, null          
        %inc.1 = zext i1 %tmp.1 to i32          
        ret i32 %inc.1
}

