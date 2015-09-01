



































define <4 x float> @test1(<4 x float> %A, <4 x float> %B) {
  %sub = fsub <4 x float> %A, %B
  %add = fadd <4 x float> %A, %B
  %vecinit6 = shufflevector <4 x float> %sub, <4 x float> %add, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x float> %vecinit6
}






define <8 x float> @test2(<8 x float> %A, <8 x float> %B) {
  %sub = fsub <8 x float> %A, %B
  %add = fadd <8 x float> %A, %B
  %vecinit14 = shufflevector <8 x float> %sub, <8 x float> %add, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  ret <8 x float> %vecinit14
}








define <4 x double> @test3(<4 x double> %A, <4 x double> %B) {
  %sub = fsub <4 x double> %A, %B
  %add = fadd <4 x double> %A, %B
  %vecinit6 = shufflevector <4 x double> %sub, <4 x double> %add, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x double> %vecinit6
}








define <2 x double> @test4(<2 x double> %A, <2 x double> %B) #0 {
  %add = fadd <2 x double> %A, %B
  %sub = fsub <2 x double> %A, %B
  %vecinit2 = shufflevector <2 x double> %sub, <2 x double> %add, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %vecinit2
}






define <4 x float> @test1b(<4 x float> %A, <4 x float>* %B) {
  %1 = load <4 x float>, <4 x float>* %B
  %add = fadd <4 x float> %A, %1
  %sub = fsub <4 x float> %A, %1
  %vecinit6 = shufflevector <4 x float> %sub, <4 x float> %add, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x float> %vecinit6
}






define <8 x float> @test2b(<8 x float> %A, <8 x float>* %B) {
  %1 = load <8 x float>, <8 x float>* %B
  %add = fadd <8 x float> %A, %1
  %sub = fsub <8 x float> %A, %1
  %vecinit14 = shufflevector <8 x float> %sub, <8 x float> %add, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  ret <8 x float> %vecinit14
}








define <4 x double> @test3b(<4 x double> %A, <4 x double>* %B) {
  %1 = load <4 x double>, <4 x double>* %B
  %add = fadd <4 x double> %A, %1
  %sub = fsub <4 x double> %A, %1
  %vecinit6 = shufflevector <4 x double> %sub, <4 x double> %add, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x double> %vecinit6
}








define <2 x double> @test4b(<2 x double> %A, <2 x double>* %B) {
  %1 = load <2 x double>, <2 x double>* %B
  %sub = fsub <2 x double> %A, %1
  %add = fadd <2 x double> %A, %1
  %vecinit2 = shufflevector <2 x double> %sub, <2 x double> %add, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %vecinit2
}





