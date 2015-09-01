

define i32 @f1(i32 %a) {


    %tmp = lshr i32 %a, 13
    ret i32 %tmp
}
