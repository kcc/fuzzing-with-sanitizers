



define i1 @eq_signed_to_small_unsigned(i8 %SB) {
        %Y = sext i8 %SB to i32         
        %C = icmp eq i32 %Y, 17         
        ret i1 %C
}

