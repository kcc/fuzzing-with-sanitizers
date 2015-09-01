


define i32 @f1(i32 %a.s) {
entry:




    %tmp = icmp eq i32 %a.s, 4
    %tmp1.s = select i1 %tmp, i32 2, i32 3
    ret i32 %tmp1.s
}

define i32 @f2(i32 %a.s) {
entry:



    %tmp = icmp sgt i32 %a.s, 4
    %tmp1.s = select i1 %tmp, i32 2, i32 3
    ret i32 %tmp1.s
}

define i32 @f3(i32 %a.s, i32 %b.s) {
entry:



    %tmp = icmp slt i32 %a.s, %b.s
    %tmp1.s = select i1 %tmp, i32 2, i32 3
    ret i32 %tmp1.s
}

define i32 @f4(i32 %a.s, i32 %b.s) {
entry:




    %tmp = icmp sle i32 %a.s, %b.s
    %tmp1.s = select i1 %tmp, i32 2, i32 3
    ret i32 %tmp1.s
}

define i32 @f5(i32 %a.u, i32 %b.u) {
entry:



    %tmp = icmp ule i32 %a.u, %b.u
    %tmp1.s = select i1 %tmp, i32 2, i32 3
    ret i32 %tmp1.s
}

define i32 @f6(i32 %a.u, i32 %b.u) {
entry:



    %tmp = icmp ugt i32 %a.u, %b.u
    %tmp1.s = select i1 %tmp, i32 2, i32 3
    ret i32 %tmp1.s
}

define i32 @f7(i32 %a, i32 %b, i32 %c) {
entry:



    %tmp1 = icmp ugt i32 %a, %b
    %tmp2 = udiv i32 %c, 3
    %tmp3 = select i1 %tmp1, i32 %tmp2, i32 3
    ret i32 %tmp3
}

define i32 @f8(i32 %a, i32 %b, i32 %c) {
entry:



    %tmp1 = icmp ult i32 %a, %b
    %tmp2 = mul i32 %c, 4
    %tmp3 = select i1 %tmp1, i32 %tmp2, i32 3
    ret i32 %tmp3
}

define i32 @f9(i32 %a, i32 %b, i32 %c) {
entry:



    %tmp1 = icmp sge i32 %a, %b
    %tmp2 = shl i32 %c, 10
    %tmp3 = lshr i32 %c, 22
    %tmp4 = or i32 %tmp2, %tmp3
    %tmp5 = select i1 %tmp1, i32 %tmp4, i32 3
    ret i32 %tmp5
}

define i32 @f10(i32 %a, i32 %b) {


    %tst = icmp ne i32 %a, %b
    %val = select i1 %tst, i32 1234, i32 12345
    ret i32 %val
}


define i32 @f11(i32 %a, i32 %b) {


    %tst = icmp ne i32 %a, %b
    %val = select i1 %tst, i32 123454321, i32 543212345
    ret i32 %val
}
