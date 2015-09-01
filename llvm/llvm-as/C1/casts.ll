


define i32 @testBool(i1 %X) {
        %tmp = zext i1 %X to i32                
        ret i32 %tmp
}

define i32 @testByte(i8 %X) {
        %tmp = icmp ne i8 %X, 0         
        %tmp.i = zext i1 %tmp to i32            
        ret i32 %tmp.i
}

define i32 @main() {
        %rslt = call i32 @testByte( i8 123 )            
        ret i32 %rslt
}

