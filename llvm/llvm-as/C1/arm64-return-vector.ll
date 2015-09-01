



define <2 x double> @test(<2 x double>* %p) nounwind {



  %tmp1 = load <2 x double>, <2 x double>* %p, align 16
  ret <2 x double> %tmp1
}
