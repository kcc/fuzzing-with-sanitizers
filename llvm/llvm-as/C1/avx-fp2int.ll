










define <4 x i8> @test1(<4 x double> %d) {
  %c = fptoui <4 x double> %d to <4 x i8>
  ret <4 x i8> %c
}
define <4 x i8> @test2(<4 x double> %d) {
  %c = fptosi <4 x double> %d to <4 x i8>
  ret <4 x i8> %c
}
