




define i32 @t2_const_var2_1_ok_1(i32 %lhs) {


    %ret = add i32 %lhs, 11206827 
    ret i32 %ret
}

define i32 @t2_const_var2_1_ok_2(i32 %lhs) {



    %ret = add i32 %lhs, 11206843 
    ret i32 %ret
}

define i32 @t2_const_var2_1_ok_3(i32 %lhs) {



    %ret = add i32 %lhs, 27984043 
    ret i32 %ret
}

define i32 @t2_const_var2_1_ok_4(i32 %lhs) {



    %ret = add i32 %lhs, 27984299 
    ret i32 %ret
}

define i32 @t2_const_var2_1_fail_1(i32 %lhs) {




    %ret = add i32 %lhs, 28027649 
    ret i32 %ret
}


define i32 @t2_const_var2_2_ok_1(i32 %lhs) {


    %ret = add i32 %lhs, 2868947712 
    ret i32 %ret
}

define i32 @t2_const_var2_2_ok_2(i32 %lhs) {



    %ret = add i32 %lhs, 2868951552 
    ret i32 %ret
}

define i32 @t2_const_var2_2_ok_3(i32 %lhs) {



    %ret = add i32 %lhs, 2868947728 
    ret i32 %ret
}

define i32 @t2_const_var2_2_ok_4(i32 %lhs) {



    %ret = add i32 %lhs, 2869996304 
    ret i32 %ret
}

define i32 @t2_const_var2_2_fail_1(i32 %lhs) {




    %ret = add i32 %lhs, 279685904 
    ret i32 %ret
}


define i32 @t2_const_var2_3_ok_1(i32 %lhs) {


    %ret = add i32 %lhs, 2880154539 
    ret i32 %ret
}

define i32 @t2_const_var2_3_fail_1(i32 %lhs) {




    %ret = add i32 %lhs, 2880154554 
    ret i32 %ret
}

define i32 @t2_const_var2_3_fail_2(i32 %lhs) {




    %ret = add i32 %lhs, 2880158379 
    ret i32 %ret
}

define i32 @t2_const_var2_3_fail_3(i32 %lhs) {




    %ret = add i32 %lhs, 2881137579 
    ret i32 %ret
}

define i32 @t2_const_var2_3_fail_4(i32 %lhs) {




    %ret = add i32 %lhs, 3131812779 
    ret i32 %ret
}


define i32 @t2_const_var3_1_ok_1(i32 %lhs) {


    %ret = add i32 %lhs, 251658240 
    ret i32 %ret
}

define i32 @t2_const_var3_2_ok_1(i32 %lhs) {


    %ret = add i32 %lhs, 3948544 
    ret i32 %ret
}

define i32 @t2_const_var3_2_ok_2(i32 %lhs) {



    %ret = add i32 %lhs, 3940352 
    ret i32 %ret
}

define i32 @t2_const_var3_3_ok_1(i32 %lhs) {


    %ret = add i32 %lhs, 258 
    ret i32 %ret
}

define i32 @t2_const_var3_4_ok_1(i32 %lhs) {


    %ret = add i32 %lhs, 4026531840 
    ret i32 %ret
}

define i32 @t2MOVTi16_ok_1(i32 %a) {


    %1 = and i32 %a, 65535
    %2 = shl i32 1234, 16
    %3 = or  i32 %1, %2

    ret i32 %3
}

define i32 @t2MOVTi16_test_1(i32 %a) {


    %1 = shl i32  255,   8
    %2 = shl i32 1234,   8
    %3 = or  i32   %1, 255  
    %4 = shl i32   %2,   8  
    %5 = and i32   %a,  %3
    %6 = or  i32   %4,  %5

    ret i32 %6
}

define i32 @t2MOVTi16_test_2(i32 %a) {


    %1 = shl i32  255,   8
    %2 = shl i32 1234,   8
    %3 = or  i32   %1, 255  
    %4 = shl i32   %2,   6
    %5 = and i32   %a,  %3
    %6 = shl i32   %4,   2  
    %7 = or  i32   %5,  %6

    ret i32 %7
}

define i32 @t2MOVTi16_test_3(i32 %a) {


    %1 = shl i32  255,   8
    %2 = shl i32 1234,   8
    %3 = or  i32   %1, 255  
    %4 = shl i32   %2,   6
    %5 = and i32   %a,  %3
    %6 = shl i32   %4,   2  
    %7 = lshr i32  %6,   6
    %8 = shl i32   %7,   6
    %9 = or  i32   %5,  %8

    ret i32 %8
}


define i32 @f1(i32 %a) {


    %tmp = add i32 0, 171
    ret i32 %tmp
}


define i32 @f2(i32 %a) {


    %tmp = add i32 0, 1179666
    ret i32 %tmp
}


define i32 @f3(i32 %a) {


    %tmp = add i32 0, 872428544
    ret i32 %tmp
}


define i32 @f4(i32 %a) {


    %tmp = add i32 0, 1448498774
    ret i32 %tmp
}


define i32 @f5(i32 %a) {


    %tmp = add i32 0, 66846720
    ret i32 %tmp
}

define i32 @f6(i32 %a) {


    %tmp = add i32 0, 65535
    ret i32 %tmp
}
