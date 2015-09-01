

target datalayout = "E-p:32:32"
target triple = "powerpc-apple-darwin8.2.0"


define double @bar(double %DEAD, double %X, double %Y) {
        %tmp.2 = fadd double %X, %Y              
        ret double %tmp.2
}
