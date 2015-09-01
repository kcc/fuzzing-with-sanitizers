

define <1 x double> @test_fpround_v1f128(<1 x fp128>* %a) {


  %b = load <1 x fp128>, <1 x fp128>* %a
  %c = fptrunc <1 x fp128> %b to <1 x double>
  ret <1 x double> %c
}

define <2 x double> @test_fpround_v2f128(<2 x fp128>* %a) {



  %b = load <2 x fp128>, <2 x fp128>* %a
  %c = fptrunc <2 x fp128> %b to <2 x double>
  ret <2 x double> %c
}
