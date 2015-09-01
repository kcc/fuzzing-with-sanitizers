



declare <2 x double> @llvm.log.v2f64(<2 x double>)

define <2 x double> @f1(<2 x double> %val) {





  %ret = call <2 x double> @llvm.log.v2f64(<2 x double> %val)
  ret <2 x double> %ret
}
