


define i32 @f1(i32 %a) {
    %tmp1 = xor i32 4294967295, 187
    %tmp2 = or i32 %a, %tmp1
    ret i32 %tmp2
}




define i32 @f2(i32 %a) {
    %tmp1 = xor i32 4294967295, 11141290 
    %tmp2 = or i32 %a, %tmp1
    ret i32 %tmp2
}




define i32 @f3(i32 %a) {
    %tmp1 = xor i32 4294967295, 3422604288
    %tmp2 = or i32 %a, %tmp1
    ret i32 %tmp2
}




define i32 @f5(i32 %a) {
    %tmp1 = xor i32 4294967295, 1114112
    %tmp2 = or i32 %a, %tmp1
    ret i32 %tmp2
}


