


define double @f(i32 %a, i128 %b) {
        %tmp = call double @g(i128 %b)
        ret double %tmp
}

declare double @g(i128)
