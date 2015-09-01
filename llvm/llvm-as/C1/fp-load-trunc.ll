


define <1 x float> @test1(<1 x double>* %p) nounwind {





















  %x = load <1 x double>, <1 x double>* %p
  %y = fptrunc <1 x double> %x to <1 x float>
  ret <1 x float> %y
}

define <2 x float> @test2(<2 x double>* %p) nounwind {











  %x = load <2 x double>, <2 x double>* %p
  %y = fptrunc <2 x double> %x to <2 x float>
  ret <2 x float> %y
}

define <4 x float> @test3(<4 x double>* %p) nounwind {













  %x = load <4 x double>, <4 x double>* %p
  %y = fptrunc <4 x double> %x to <4 x float>
  ret <4 x float> %y
}

define <8 x float> @test4(<8 x double>* %p) nounwind {


















  %x = load <8 x double>, <8 x double>* %p
  %y = fptrunc <8 x double> %x to <8 x float>
  ret <8 x float> %y
}


