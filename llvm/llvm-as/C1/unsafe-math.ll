



define double @foo(double %X) nounwind {
        %tmp1 = fmul double %X, 1.23
        %tmp2 = fmul double %tmp1, 4.124
        ret double %tmp2
}

