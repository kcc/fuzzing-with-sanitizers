






define i32 @f1(i32 %a) {
    %l8 = shl i32 %a, 8
    %r8 = lshr i32 %a, 8
    %mask_l8 = and i32 %l8, 4278255360
    %mask_r8 = and i32 %r8, 16711935
    %tmp = or i32 %mask_l8, %mask_r8
    ret i32 %tmp
}





define i32 @f2(i32 %a) {
    %l8 = shl i32 %a, 8
    %r8 = lshr i32 %a, 8
    %masklo_l8 = and i32 %l8, 65280
    %maskhi_l8 = and i32 %l8, 4278190080
    %masklo_r8 = and i32 %r8, 255
    %maskhi_r8 = and i32 %r8, 16711680
    %tmp1 = or i32 %masklo_l8, %masklo_r8
    %tmp2 = or i32 %maskhi_l8, %maskhi_r8
    %tmp = or i32 %tmp1, %tmp2
    ret i32 %tmp
}
