


target triple = "i686-pc-linux-gnu"

define <1 x float> @test1(<1 x double> %x) nounwind {



















  %y = fptrunc <1 x double> %x to <1 x float>
  ret <1 x float> %y
}

define <2 x float> @test2(<2 x double> %x) nounwind {









  %y = fptrunc <2 x double> %x to <2 x float>
  ret <2 x float> %y
}

define <4 x float> @test3(<4 x double> %x) nounwind {












  %y = fptrunc <4 x double> %x to <4 x float>
  ret <4 x float> %y
}

define <8 x float> @test4(<8 x double> %x) nounwind {


















  %y = fptrunc <8 x double> %x to <8 x float>
  ret <8 x float> %y
}


