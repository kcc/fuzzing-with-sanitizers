

define float @f(i32 %a) {




entry:
        %tmp = sitofp i32 %a to float           
        ret float %tmp
}

define double @g(i32 %a) {




entry:
        %tmp = sitofp i32 %a to double          
        ret double %tmp
}

define double @uint_to_double(i32 %a) {




entry:
        %tmp = uitofp i32 %a to double          
        ret double %tmp
}

define float @uint_to_float(i32 %a) {




entry:
        %tmp = uitofp i32 %a to float           
        ret float %tmp
}

define double @h(double* %v) {



entry:
        %tmp = load double, double* %v          
        ret double %tmp
}

define float @h2() {


entry:
        ret float 1.000000e+00
}

define double @f2(double %a) {


        ret double %a
}

define void @f3() {



entry:
        %tmp = call double @f5( )               
        call void @f4( double %tmp )
        ret void
}

declare void @f4(double)

declare double @f5()

