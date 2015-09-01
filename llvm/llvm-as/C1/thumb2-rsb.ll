

define i32 @f1(i32 %a, i32 %b) {
    %tmp = shl i32 %b, 5
    %tmp1 = sub i32 %tmp, %a
    ret i32 %tmp1
}



define i32 @f2(i32 %a, i32 %b) {
    %tmp = lshr i32 %b, 6
    %tmp1 = sub i32 %tmp, %a
    ret i32 %tmp1
}



define i32 @f3(i32 %a, i32 %b) {
    %tmp = ashr i32 %b, 7
    %tmp1 = sub i32 %tmp, %a
    ret i32 %tmp1
}



define i32 @f4(i32 %a, i32 %b) {
    %l8 = shl i32 %a, 24
    %r8 = lshr i32 %a, 8
    %tmp = or i32 %l8, %r8
    %tmp1 = sub i32 %tmp, %a
    ret i32 %tmp1
}


