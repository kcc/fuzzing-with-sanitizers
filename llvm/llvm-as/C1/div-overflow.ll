





define i8 @foo(i8 %a) {
        %t0 = shl i8 %a, 7
        %t1 = lshr i8 %t0, 7
        ret i8 %t1
}
