

define i1 @X(i32 %X) {
        %Y = add i32 %X, 14             
        %Z = icmp ne i32 %Y, 12345              
        ret i1 %Z
}

