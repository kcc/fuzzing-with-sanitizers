


define i32 @f1(i32 %a) {


    %tmp = xor i32 4294967295, 187
    ret i32 %tmp
}


define i32 @f2(i32 %a) {


    %tmp = xor i32 4294967295, 11141290 
    ret i32 %tmp
}


define i32 @f3(i32 %a) {


    %tmp = xor i32 4294967295, 3422604288
    ret i32 %tmp
}


define i32 @f5(i32 %a) {


    %tmp = xor i32 4294967295, 1114112
    ret i32 %tmp
}
