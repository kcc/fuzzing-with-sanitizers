
define i32 @f1(i32 %a, i32 %b, i32 %c) {


    %tmp1 = icmp eq i32 %a, 0
    br i1 %tmp1, label %cond_false, label %cond_true

cond_true:
    %tmp2 = mul i32 %a, %b
    %tmp3 = sub i32 %c, %tmp2
    ret i32 %tmp3

cond_false:
    ret i32 %a
}
