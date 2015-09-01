

define i32 @f1(i32 %a, i32 %b) {


    %tmp = shl i32 %a, %b
    ret i32 %tmp
}
