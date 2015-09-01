

define i1 @T(double %X) {
        %V = fcmp oeq double %X, %X             
        ret i1 %V
}
