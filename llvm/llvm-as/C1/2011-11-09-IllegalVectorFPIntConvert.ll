

define <2 x i32> @test1(<2 x double>* %A) {



  %tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = fptosi <2 x double> %tmp1 to <2 x i32>
	ret <2 x i32> %tmp2
}

define <2 x i32> @test2(<2 x double>* %A) {



  %tmp1 = load <2 x double>, <2 x double>* %A
	%tmp2 = fptoui <2 x double> %tmp1 to <2 x i32>
	ret <2 x i32> %tmp2
}

define <2 x double> @test3(<2 x i32>* %A) {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = sitofp <2 x i32> %tmp1 to <2 x double>
	ret <2 x double> %tmp2
}

define <2 x double> @test4(<2 x i32>* %A) {



  %tmp1 = load <2 x i32>, <2 x i32>* %A
	%tmp2 = uitofp <2 x i32> %tmp1 to <2 x double>
	ret <2 x double> %tmp2
}
