

define i32 @f1(i32 %a) {
entry:


    %tmp = shl i32 %a, 12
    %tmp2 = ashr i32 %tmp, 12
    ret i32 %tmp2
}

define i32 @f2(i32 %a) {
entry:


    %tmp = shl i32 %a, 12
    %tmp2 = lshr i32 %tmp, 12
    ret i32 %tmp2
}

define i32 @f3(i32 %a) {
entry:


    %tmp = shl i32 %a, 24
    %tmp2 = ashr i32 %tmp, 29
    ret i32 %tmp2
}

define i32 @f4(i32 %a) {
entry:


    %tmp = shl i32 %a, 24
    %tmp2 = lshr i32 %tmp, 29
    ret i32 %tmp2
}

define i32 @f5(i32 %a) {
entry:



    %tmp = shl i32 %a, 3
    %tmp2 = ashr i32 %tmp, 1
    ret i32 %tmp2
}

define signext i8 @f6(i32 %a) {



  %tmp = lshr i32 %a, 23
  %res = trunc i32 %tmp to i8
  ret i8 %res
}

define signext i8 @f7(i32 %a) {



  %tmp = lshr i32 %a, 25
  %res = trunc i32 %tmp to i8
  ret i8 %res
}
