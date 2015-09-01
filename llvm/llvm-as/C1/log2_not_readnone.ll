




declare double @log2(double)
declare double @exp2(double)

define void @f() {
       
       %1 = call double @log2(double 0.000000e+00)
       
       %2 = call double @exp2(double 0.000000e+00)
       ret void
}
