


define i32 @f1(i32 %a) {


    %tmp = and i32 %a, 4278190095
    ret i32 %tmp
}


define i32 @f2(i32 %a) {


    %tmp = and i32 %a, 4286578688
    ret i32 %tmp
}


define i32 @f3(i32 %a) {


    %tmp = and i32 %a, 4095
    ret i32 %tmp
}
