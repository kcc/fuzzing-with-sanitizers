



define <2 x double> @maxpd(<2 x double> %x, <2 x double> %y) {
  %max_is_x = fcmp oge <2 x double> %x, %y
  %max = select <2 x i1> %max_is_x, <2 x double> %x, <2 x double> %y
  ret <2 x double> %max
}



define <2 x double> @minpd(<2 x double> %x, <2 x double> %y) {
  %min_is_x = fcmp ole <2 x double> %x, %y
  %min = select <2 x i1> %min_is_x, <2 x double> %x, <2 x double> %y
  ret <2 x double> %min
}



define <4 x float> @maxps(<4 x float> %x, <4 x float> %y) {
  %max_is_x = fcmp oge <4 x float> %x, %y
  %max = select <4 x i1> %max_is_x, <4 x float> %x, <4 x float> %y
  ret <4 x float> %max
}



define <4 x float> @minps(<4 x float> %x, <4 x float> %y) {
  %min_is_x = fcmp ole <4 x float> %x, %y
  %min = select <4 x i1> %min_is_x, <4 x float> %x, <4 x float> %y
  ret <4 x float> %min
}



define <4 x double> @vmaxpd(<4 x double> %x, <4 x double> %y) {
  %max_is_x = fcmp oge <4 x double> %x, %y
  %max = select <4 x i1> %max_is_x, <4 x double> %x, <4 x double> %y
  ret <4 x double> %max
}



define <4 x double> @vminpd(<4 x double> %x, <4 x double> %y) {
  %min_is_x = fcmp ole <4 x double> %x, %y
  %min = select <4 x i1> %min_is_x, <4 x double> %x, <4 x double> %y
  ret <4 x double> %min
}



define <8 x float> @vmaxps(<8 x float> %x, <8 x float> %y) {
  %max_is_x = fcmp oge <8 x float> %x, %y
  %max = select <8 x i1> %max_is_x, <8 x float> %x, <8 x float> %y
  ret <8 x float> %max
}



define <8 x float> @vminps(<8 x float> %x, <8 x float> %y) {
  %min_is_x = fcmp ole <8 x float> %x, %y
  %min = select <8 x i1> %min_is_x, <8 x float> %x, <8 x float> %y
  ret <8 x float> %min
}
