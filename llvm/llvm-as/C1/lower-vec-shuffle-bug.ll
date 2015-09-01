

define <4 x double> @test1(<4 x double> %A, <4 x double> %B) {




entry:
  %0 = shufflevector <4 x double> %A, <4 x double> %B, <4 x i32> <i32 undef, i32 1, i32 undef, i32 5>
  ret <4 x double> %0
}

define <4 x double> @test2(<4 x double> %A, <4 x double> %B) {




entry:
  %0 = shufflevector <4 x double> %A, <4 x double> %B, <4 x i32> <i32 undef, i32 1, i32 undef, i32 1>
  ret <4 x double> %0
}

define <4 x double> @test3(<4 x double> %A, <4 x double> %B) {




entry:
  %0 = shufflevector <4 x double> %A, <4 x double> %B, <4 x i32> <i32 0, i32 1, i32 undef, i32 5>
  ret <4 x double> %0
}

define <4 x double> @test4(<4 x double> %A, <4 x double> %B) {




entry:
  %0 = shufflevector <4 x double> %A, <4 x double> %B, <4 x i32> <i32 0, i32 1, i32 undef, i32 1>
  ret <4 x double> %0
}
