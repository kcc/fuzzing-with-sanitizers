




define i32 @main(i32 %argc) {
entry:
    %tmp1 = add i32 %argc, -2
    %tmp2 = add i32 %argc, 1879048192
    %p = alloca i8

    %p1 = getelementptr i8, i8* %p, i32 %tmp1

    %p2 = getelementptr i8, i8* %p, i32 %tmp2
    %cmp = icmp ult i8* %p1, %p2
    br i1 %cmp, label %bbtrue, label %bbfalse
bbtrue:          
    ret i32 -1
bbfalse:         
    ret i32 0
}
