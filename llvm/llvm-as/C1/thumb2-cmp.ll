





define i1 @f1(i32 %a) {


    %tmp = icmp ne i32 %a, 187
    ret i1 %tmp
}


define i1 @f2(i32 %a) {


    %tmp = icmp eq i32 %a, 11141290 
    ret i1 %tmp
}


define i1 @f3(i32 %a) {


    %tmp = icmp ne i32 %a, 3422604288
    ret i1 %tmp
}


define i1 @f4(i32 %a) {


    %tmp = icmp ne i32 %a, 3722304989
    ret i1 %tmp
}


define i1 @f5(i32 %a) {


    %tmp = icmp eq i32 %a, 1114112
    ret i1 %tmp
}






define i32 @f6(i32 %a) {
    %tmp = icmp sgt i32 %a, 2147483647
    br i1 %tmp, label %true, label %false
true:
    ret i32 2
false:
    ret i32 0
}
