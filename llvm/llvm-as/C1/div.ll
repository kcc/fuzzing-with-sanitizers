












define i32 @f1(i32 %a, i32 %b) {
entry:






        %tmp1 = sdiv i32 %a, %b         
        ret i32 %tmp1
}

define i32 @f2(i32 %a, i32 %b) {
entry:






        %tmp1 = udiv i32 %a, %b         
        ret i32 %tmp1
}

define i32 @f3(i32 %a, i32 %b) {
entry:






        %tmp1 = srem i32 %a, %b         
        ret i32 %tmp1
}

define i32 @f4(i32 %a, i32 %b) {
entry:






        %tmp1 = urem i32 %a, %b         
        ret i32 %tmp1
}

