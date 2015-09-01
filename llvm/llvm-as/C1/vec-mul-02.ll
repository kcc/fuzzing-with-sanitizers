



declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>)


define <16 x i8> @f1(<16 x i8> %dummy, <16 x i8> %val1, <16 x i8> %val2,
                     <16 x i8> %val3) {



  %mul = mul <16 x i8> %val1, %val2
  %ret = add <16 x i8> %mul, %val3
  ret <16 x i8> %ret
}


define <8 x i16> @f2(<8 x i16> %dummy, <8 x i16> %val1, <8 x i16> %val2,
                     <8 x i16> %val3) {



  %mul = mul <8 x i16> %val1, %val2
  %ret = add <8 x i16> %mul, %val3
  ret <8 x i16> %ret
}


define <4 x i32> @f3(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2,
                     <4 x i32> %val3) {



  %mul = mul <4 x i32> %val1, %val2
  %ret = add <4 x i32> %mul, %val3
  ret <4 x i32> %ret
}


define <2 x double> @f4(<2 x double> %dummy, <2 x double> %val1,
                        <2 x double> %val2, <2 x double> %val3) {



  %ret = call <2 x double> @llvm.fma.v2f64 (<2 x double> %val1,
                                            <2 x double> %val2,
                                            <2 x double> %val3)
  ret <2 x double> %ret
}


define <2 x double> @f5(<2 x double> %dummy, <2 x double> %val1,
                        <2 x double> %val2, <2 x double> %val3) {



  %negval3 = fsub <2 x double> <double -0.0, double -0.0>, %val3
  %ret = call <2 x double> @llvm.fma.v2f64 (<2 x double> %val1,
                                            <2 x double> %val2,
                                            <2 x double> %negval3)
  ret <2 x double> %ret
}
