

















@float = global float zeroinitializer
@double = global double zeroinitializer

define float @retfloat() nounwind {
entry:
        %0 = load volatile float, float* @float
        ret float %0
}









define double @retdouble() nounwind {
entry:
        %0 = load volatile double, double* @double
        ret double %0
}








