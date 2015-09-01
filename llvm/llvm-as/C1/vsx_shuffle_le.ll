

define <2 x double> @test00(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 0, i32 0>
  ret <2 x double> %v3





}

define <2 x double> @test01(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 0, i32 1>
  ret <2 x double> %v3




}

define <2 x double> @test02(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 0, i32 2>
  ret <2 x double> %v3







}

define <2 x double> @test03(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 0, i32 3>
  ret <2 x double> %v3







}

define <2 x double> @test10(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 1, i32 0>
  ret <2 x double> %v3





}

define <2 x double> @test11(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 1, i32 1>
  ret <2 x double> %v3





}

define <2 x double> @test12(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 1, i32 2>
  ret <2 x double> %v3







}

define <2 x double> @test13(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 1, i32 3>
  ret <2 x double> %v3







}

define <2 x double> @test20(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 2, i32 0>
  ret <2 x double> %v3







}

define <2 x double> @test21(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 2, i32 1>
  ret <2 x double> %v3







}

define <2 x double> @test22(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 2, i32 2>
  ret <2 x double> %v3





}

define <2 x double> @test23(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 2, i32 3>
  ret <2 x double> %v3




}

define <2 x double> @test30(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 3, i32 0>
  ret <2 x double> %v3







}

define <2 x double> @test31(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 3, i32 1>
  ret <2 x double> %v3







}

define <2 x double> @test32(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 3, i32 2>
  ret <2 x double> %v3





}

define <2 x double> @test33(<2 x double>* %p1, <2 x double>* %p2) {
  %v1 = load <2 x double>, <2 x double>* %p1
  %v2 = load <2 x double>, <2 x double>* %p2
  %v3 = shufflevector <2 x double> %v1, <2 x double> %v2, <2 x i32> < i32 3, i32 3>
  ret <2 x double> %v3





}
