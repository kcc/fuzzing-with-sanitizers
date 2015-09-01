

define i32 @f1(float %a) {



entry:
        %tmp = fcmp olt float %a, 1.000000e+00          
        %tmp1 = zext i1 %tmp to i32              
        ret i32 %tmp1
}

define i32 @f2(float %a) {



entry:
        %tmp = fcmp oeq float %a, 1.000000e+00          
        %tmp2 = zext i1 %tmp to i32              
        ret i32 %tmp2
}

define i32 @f3(float %a) {



entry:
        %tmp = fcmp ogt float %a, 1.000000e+00          
        %tmp3 = zext i1 %tmp to i32              
        ret i32 %tmp3
}

define i32 @f4(float %a) {



entry:
        %tmp = fcmp oge float %a, 1.000000e+00          
        %tmp4 = zext i1 %tmp to i32              
        ret i32 %tmp4
}

define i32 @f5(float %a) {



entry:
        %tmp = fcmp ole float %a, 1.000000e+00          
        %tmp5 = zext i1 %tmp to i32              
        ret i32 %tmp5
}

define i32 @f6(float %a) {



entry:
        %tmp = fcmp une float %a, 1.000000e+00          
        %tmp6 = zext i1 %tmp to i32              
        ret i32 %tmp6
}

define i32 @g1(double %a) {



entry:
        %tmp = fcmp olt double %a, 1.000000e+00         
        %tmp7 = zext i1 %tmp to i32              
        ret i32 %tmp7
}
