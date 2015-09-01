




















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







define { double, double } @retComplexDouble() #0 {
  %retval = alloca { double, double }, align 8
  %1 = load { double, double }, { double, double }* %retval
  ret { double, double } %1
}




