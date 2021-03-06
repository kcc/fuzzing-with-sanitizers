

define i32 @f1(i32 %a, i32 %b) {


    %tmp2 = or i32 %a, %b
    ret i32 %tmp2
}

define i32 @f5(i32 %a, i32 %b) {


    %tmp = shl i32 %b, 5
    %tmp2 = or i32 %a, %tmp
    ret i32 %tmp2
}

define i32 @f6(i32 %a, i32 %b) {


    %tmp = lshr i32 %b, 6
    %tmp2 = or i32 %a, %tmp
    ret i32 %tmp2
}

define i32 @f7(i32 %a, i32 %b) {


    %tmp = ashr i32 %b, 7
    %tmp2 = or i32 %a, %tmp
    ret i32 %tmp2
}

define i32 @f8(i32 %a, i32 %b) {


    %l8 = shl i32 %a, 24
    %r8 = lshr i32 %a, 8
    %tmp = or i32 %l8, %r8
    %tmp2 = or i32 %a, %tmp
    ret i32 %tmp2
}
