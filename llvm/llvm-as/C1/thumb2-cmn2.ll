


define i1 @f1(i32 %a) {


    %tmp = icmp ne i32 %a, 4294967109
    ret i1 %tmp
}


define i1 @f2(i32 %a) {


    %tmp = icmp eq i32 %a, 4283826006
    ret i1 %tmp
}


define i1 @f3(i32 %a) {


    %tmp = icmp ne i32 %a, 872363008
    ret i1 %tmp
}


define i1 @f4(i32 %a) {


    %tmp = icmp eq i32 %a, 4293853184
    ret i1 %tmp
}
