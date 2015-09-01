






define i64 @foo(i64 %x, i64* %X) {
        %tmp.1 = load i64, i64* %X           
        %tmp.3 = trunc i64 %tmp.1 to i8         
        %shift.upgrd.1 = zext i8 %tmp.3 to i64          
        %tmp.4 = shl i64 %x, %shift.upgrd.1             
        ret i64 %tmp.4
}

