





define i1 @f2(i32 %a) {
    %tmp = xor i32 %a, 187
    %tmp1 = icmp eq i32 0, %tmp
    ret i1 %tmp1
}




define i1 @f3(i32 %a) {
    %tmp = xor i32 %a, 11141290 
    %tmp1 = icmp eq i32 %tmp, 0
    ret i1 %tmp1
}




define i1 @f6(i32 %a) {
    %tmp = xor i32 %a, 3422604288
    %tmp1 = icmp eq i32 0, %tmp
    ret i1 %tmp1
}




define i1 @f7(i32 %a) {
    %tmp = xor i32 %a, 3722304989
    %tmp1 = icmp eq i32 %tmp, 0
    ret i1 %tmp1
}




define i1 @f8(i32 %a) {
    %tmp = xor i32 %a, 3722304989
    %tmp1 = icmp ne i32 0, %tmp
    ret i1 %tmp1
}


define i1 @f10(i32 %a) {
    %tmp = xor i32 %a, 1114112
    %tmp1 = icmp eq i32 0, %tmp
    ret i1 %tmp1
}



