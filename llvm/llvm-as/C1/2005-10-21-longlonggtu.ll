

define float @t(i64 %u_arg) {
        %u = bitcast i64 %u_arg to i64          
        %tmp5 = add i64 %u, 9007199254740991            
        %tmp = icmp ugt i64 %tmp5, 18014398509481982            
        br i1 %tmp, label %T, label %F

T:              
        ret float 1.000000e+00

F:              
        call float @t( i64 0 )          
        ret float 0.000000e+00
}

