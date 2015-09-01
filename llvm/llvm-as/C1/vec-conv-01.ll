




define <2 x i64> @f1(<2 x double> %doubles) {



  %dwords = fptosi <2 x double> %doubles to <2 x i64>
  ret <2 x i64> %dwords
}


define <2 x i64> @f2(<2 x double> %doubles) {



  %dwords = fptoui <2 x double> %doubles to <2 x i64>
  ret <2 x i64> %dwords
}


define <2 x double> @f3(<2 x i64> %dwords) {



  %doubles = sitofp <2 x i64> %dwords to <2 x double>
  ret <2 x double> %doubles
}


define <2 x double> @f4(<2 x i64> %dwords) {



  %doubles = uitofp <2 x i64> %dwords to <2 x double>
  ret <2 x double> %doubles
}


define void @f5(<2 x double> %doubles, <2 x i32> *%ptr) {
  %words = fptosi <2 x double> %doubles to <2 x i32>
  store <2 x i32> %words, <2 x i32> *%ptr
  ret void
}


define void @f6(<2 x double> %doubles, <2 x i32> *%ptr) {
  %words = fptoui <2 x double> %doubles to <2 x i32>
  store <2 x i32> %words, <2 x i32> *%ptr
  ret void
}


define <2 x double> @f7(<2 x i32> *%ptr) {
  %words = load <2 x i32>, <2 x i32> *%ptr
  %doubles = sitofp <2 x i32> %words to <2 x double>
  ret <2 x double> %doubles
}


define <2 x double> @f8(<2 x i32> *%ptr) {
  %words = load <2 x i32>, <2 x i32> *%ptr
  %doubles = uitofp <2 x i32> %words to <2 x double>
  ret <2 x double> %doubles
}


define <2 x i64> @f9(<2 x float> *%ptr) {
  %floats = load <2 x float>, <2 x float> *%ptr
  %dwords = fptosi <2 x float> %floats to <2 x i64>
  ret <2 x i64> %dwords
}


define <2 x i64> @f10(<2 x float> *%ptr) {
  %floats = load <2 x float>, <2 x float> *%ptr
  %dwords = fptoui <2 x float> %floats to <2 x i64>
  ret <2 x i64> %dwords
}


define void @f11(<2 x i64> %dwords, <2 x float> *%ptr) {
  %floats = sitofp <2 x i64> %dwords to <2 x float>
  store <2 x float> %floats, <2 x float> *%ptr
  ret void
}


define void @f12(<2 x i64> %dwords, <2 x float> *%ptr) {
  %floats = uitofp <2 x i64> %dwords to <2 x float>
  store <2 x float> %floats, <2 x float> *%ptr
  ret void
}
