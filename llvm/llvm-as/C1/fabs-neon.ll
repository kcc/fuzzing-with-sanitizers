



define <4 x float> @test(<4 x float> %a) {
  %foo = call <4 x float> @llvm.fabs.v4f32(<4 x float> %a)
  ret <4 x float> %foo
}
declare <4 x float> @llvm.fabs.v4f32(<4 x float> %a)



define <2 x float> @test2(<2 x float> %a) {
  %foo = call <2 x float> @llvm.fabs.v2f32(<2 x float> %a)
    ret <2 x float> %foo
}
declare <2 x float> @llvm.fabs.v2f32(<2 x float> %a)


















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
