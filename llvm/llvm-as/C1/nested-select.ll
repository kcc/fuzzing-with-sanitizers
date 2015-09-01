



%typedef.tree = type opaque

define i32 @ic_test(double %p.0.2.0.val, double %p.0.2.1.val, double %p.0.2.2.val, %typedef.tree* %t) {
        %result.1.0 = zext i1 false to i32              
        %tmp.55 = fcmp oge double 0.000000e+00, 1.000000e+00            
        %tmp.66 = fdiv double 0.000000e+00, 0.000000e+00                
        br label %N

N:              
        %result.1.1 = select i1 %tmp.55, i32 0, i32 %result.1.0         
        %tmp.75 = fcmp oge double %tmp.66, 1.000000e+00         
        %retval1 = select i1 %tmp.75, i32 0, i32 %result.1.1            
        ret i32 %retval1
}

