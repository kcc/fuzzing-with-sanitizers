




define i32 @ADD(i32 %X) nounwind {
        %Y = add i32 %X, 65537          
        ret i32 %Y
}

define i32 @SUB(i32 %X) nounwind {
        %Y = sub i32 %X, 65537          
        ret i32 %Y
}

