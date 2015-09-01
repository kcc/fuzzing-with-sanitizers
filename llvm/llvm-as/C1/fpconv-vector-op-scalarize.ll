






define <1 x double> @test_sitofp(<1 x i1> %in) {




entry:
  %0 = sitofp <1 x i1> %in to <1 x double>
  ret <1 x double> %0
}

define <1 x double> @test_uitofp(<1 x i1> %in) {




entry:
  %0 = uitofp <1 x i1> %in to <1 x double>
  ret <1 x double> %0
}

define <1 x i64> @test_fptosi(<1 x fp128> %in) {



entry:
  %0 = fptosi <1 x fp128> %in to <1 x i64>
  ret <1 x i64> %0
}

define <1 x i64> @test_fptoui(<1 x fp128> %in) {



entry:
  %0 = fptoui <1 x fp128> %in to <1 x i64>
  ret <1 x i64> %0
}
