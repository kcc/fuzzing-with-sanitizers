


define float @f(i32 %a, i128 %b) {
        %tmp = call float @g(i128 %b)
        ret float %tmp
}

declare float @g(i128)
