



define double @main(...) {
entry:
        %retval = alloca double         
        store double 0.000000e+00, double* %retval
        %r = alloca double              
        load double, double* %r         
        store double %0, double* %retval
        br label %return

return:         
        load double, double* %retval            
        ret double %1
}

