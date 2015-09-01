


define <2 x double> @fabs_v2f64(<2 x double> %p)
{
  
  
  %t = call <2 x double> @llvm.fabs.v2f64(<2 x double> %p)
  ret <2 x double> %t
}
declare <2 x double> @llvm.fabs.v2f64(<2 x double> %p)

define <4 x float> @fabs_v4f32(<4 x float> %p)
{
  
  
  %t = call <4 x float> @llvm.fabs.v4f32(<4 x float> %p)
  ret <4 x float> %t
}
declare <4 x float> @llvm.fabs.v4f32(<4 x float> %p)

define <4 x double> @fabs_v4f64(<4 x double> %p)
{
  
  
  %t = call <4 x double> @llvm.fabs.v4f64(<4 x double> %p)
  ret <4 x double> %t
}
declare <4 x double> @llvm.fabs.v4f64(<4 x double> %p)

define <8 x float> @fabs_v8f32(<8 x float> %p)
{
  
  
  %t = call <8 x float> @llvm.fabs.v8f32(<8 x float> %p)
  ret <8 x float> %t
}
declare <8 x float> @llvm.fabs.v8f32(<8 x float> %p)
















define i64 @fabs_v2f32_1() {



 %bitcast = bitcast i64 18446744069414584320 to <2 x float> 
 %fabs = call <2 x float> @llvm.fabs.v2f32(<2 x float> %bitcast)
 %ret = bitcast <2 x float> %fabs to i64
 ret i64 %ret
}

define i64 @fabs_v2f32_2() {



 %bitcast = bitcast i64 4294967295 to <2 x float> 
 %fabs = call <2 x float> @llvm.fabs.v2f32(<2 x float> %bitcast)
 %ret = bitcast <2 x float> %fabs to i64
 ret i64 %ret
}

declare <2 x float> @llvm.fabs.v2f32(<2 x float> %p)
