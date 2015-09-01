

define void @foo(float* nocapture readonly %x_value, double* nocapture %output) #0 {
  %1 = bitcast float* %x_value to <4 x float>*
  %2 = load <4 x float>, <4 x float>* %1, align 16
  %3 = fpext <4 x float> %2 to <4 x double>





  %4 = bitcast double* %output to <4 x double>*
  store <4 x double> %3, <4 x double>* %4
  ret void
}
