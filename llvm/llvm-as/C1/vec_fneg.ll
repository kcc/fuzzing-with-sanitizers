




define <4 x float> @t1(<4 x float> %Q) {



        %tmp = fsub <4 x float> < float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00 >, %Q
	ret <4 x float> %tmp
}


define <4 x float> @t2(<4 x float> %Q) {





        %tmp = fsub <4 x float> zeroinitializer, %Q
	ret <4 x float> %tmp
}












define <2 x float> @fneg_bitcast(i64 %i) {





  %bitcast = bitcast i64 %i to <2 x float>
  %fneg = fsub <2 x float> <float -0.0, float -0.0>, %bitcast
  ret <2 x float> %fneg
}
