

define i32 @bork(i64 %foo, i64 %bar) {
entry:
        %tmp = load i64, i64* null, align 8          
        %tmp2 = icmp ule i64 %tmp, 0            
        %min = select i1 %tmp2, i64 %tmp, i64 0   
        store i64 %min, i64* null, align 8
        ret i32 0
}
