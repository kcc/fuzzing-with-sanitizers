





define double @test1(double %a, double %b) {
entry:
  %v = fmul double %a, %b
  ret double %v








}

define double @test2(double %a, double %b) {
entry:
  %v = fdiv double %a, %b
  ret double %v








}

define double @test3(double %a, double %b) {
entry:
  %v = fadd double %a, %b
  ret double %v








}

define <2 x double> @test4(<2 x double> %a, <2 x double> %b) {
entry:
  %v = fadd <2 x double> %a, %b
  ret <2 x double> %v








}

define <4 x i32> @test5(<4 x i32> %a, <4 x i32> %b) {
entry:
  %v = xor <4 x i32> %a, %b
  ret <4 x i32> %v















}

define <8 x i16> @test6(<8 x i16> %a, <8 x i16> %b) {
entry:
  %v = xor <8 x i16> %a, %b
  ret <8 x i16> %v















}

define <16 x i8> @test7(<16 x i8> %a, <16 x i8> %b) {
entry:
  %v = xor <16 x i8> %a, %b
  ret <16 x i8> %v















}

define <4 x i32> @test8(<4 x i32> %a, <4 x i32> %b) {
entry:
  %v = or <4 x i32> %a, %b
  ret <4 x i32> %v















}

define <8 x i16> @test9(<8 x i16> %a, <8 x i16> %b) {
entry:
  %v = or <8 x i16> %a, %b
  ret <8 x i16> %v















}

define <16 x i8> @test10(<16 x i8> %a, <16 x i8> %b) {
entry:
  %v = or <16 x i8> %a, %b
  ret <16 x i8> %v















}

define <4 x i32> @test11(<4 x i32> %a, <4 x i32> %b) {
entry:
  %v = and <4 x i32> %a, %b
  ret <4 x i32> %v















}

define <8 x i16> @test12(<8 x i16> %a, <8 x i16> %b) {
entry:
  %v = and <8 x i16> %a, %b
  ret <8 x i16> %v















}

define <16 x i8> @test13(<16 x i8> %a, <16 x i8> %b) {
entry:
  %v = and <16 x i8> %a, %b
  ret <16 x i8> %v















}

define <4 x i32> @test14(<4 x i32> %a, <4 x i32> %b) {
entry:
  %v = or <4 x i32> %a, %b
  %w = xor <4 x i32> %v, <i32 -1, i32 -1, i32 -1, i32 -1>
  ret <4 x i32> %w



















}

define <8 x i16> @test15(<8 x i16> %a, <8 x i16> %b) {
entry:
  %v = or <8 x i16> %a, %b
  %w = xor <8 x i16> %v, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  ret <8 x i16> %w






















}

define <16 x i8> @test16(<16 x i8> %a, <16 x i8> %b) {
entry:
  %v = or <16 x i8> %a, %b
  %w = xor <16 x i8> %v, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  ret <16 x i8> %w






















}

define <4 x i32> @test17(<4 x i32> %a, <4 x i32> %b) {
entry:
  %w = xor <4 x i32> %b, <i32 -1, i32 -1, i32 -1, i32 -1>
  %v = and <4 x i32> %a, %w
  ret <4 x i32> %v


















}

define <8 x i16> @test18(<8 x i16> %a, <8 x i16> %b) {
entry:
  %w = xor <8 x i16> %b, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  %v = and <8 x i16> %a, %w
  ret <8 x i16> %v























}

define <16 x i8> @test19(<16 x i8> %a, <16 x i8> %b) {
entry:
  %w = xor <16 x i8> %b, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %v = and <16 x i8> %a, %w
  ret <16 x i8> %v























}

define <4 x i32> @test20(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c, <4 x i32> %d) {
entry:
  %m = icmp eq <4 x i32> %c, %d
  %v = select <4 x i1> %m, <4 x i32> %a, <4 x i32> %b
  ret <4 x i32> %v

























}

define <4 x float> @test21(<4 x float> %a, <4 x float> %b, <4 x float> %c, <4 x float> %d) {
entry:
  %m = fcmp oeq <4 x float> %c, %d
  %v = select <4 x i1> %m, <4 x float> %a, <4 x float> %b
  ret <4 x float> %v




















}

define <4 x float> @test22(<4 x float> %a, <4 x float> %b, <4 x float> %c, <4 x float> %d) {
entry:
  %m = fcmp ueq <4 x float> %c, %d
  %v = select <4 x i1> %m, <4 x float> %a, <4 x float> %b
  ret <4 x float> %v

































}

define <8 x i16> @test23(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c, <8 x i16> %d) {
entry:
  %m = icmp eq <8 x i16> %c, %d
  %v = select <8 x i1> %m, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %v



















}

define <16 x i8> @test24(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c, <16 x i8> %d) {
entry:
  %m = icmp eq <16 x i8> %c, %d
  %v = select <16 x i1> %m, <16 x i8> %a, <16 x i8> %b
  ret <16 x i8> %v



















}

define <2 x double> @test25(<2 x double> %a, <2 x double> %b, <2 x double> %c, <2 x double> %d) {
entry:
  %m = fcmp oeq <2 x double> %c, %d
  %v = select <2 x i1> %m, <2 x double> %a, <2 x double> %b
  ret <2 x double> %v










}

define <2 x i64> @test26(<2 x i64> %a, <2 x i64> %b) {
  %v = add <2 x i64> %a, %b
  ret <2 x i64> %v















}

define <2 x i64> @test27(<2 x i64> %a, <2 x i64> %b) {
  %v = and <2 x i64> %a, %b
  ret <2 x i64> %v








}

define <2 x double> @test28(<2 x double>* %a) {
  %v = load <2 x double>, <2 x double>* %a, align 16
  ret <2 x double> %v









}

define void @test29(<2 x double>* %a, <2 x double> %b) {
  store <2 x double> %b, <2 x double>* %a, align 16
  ret void









}

define <2 x double> @test28u(<2 x double>* %a) {
  %v = load <2 x double>, <2 x double>* %a, align 8
  ret <2 x double> %v









}

define void @test29u(<2 x double>* %a, <2 x double> %b) {
  store <2 x double> %b, <2 x double>* %a, align 8
  ret void









}

define <2 x i64> @test30(<2 x i64>* %a) {
  %v = load <2 x i64>, <2 x i64>* %a, align 16
  ret <2 x i64> %v
















}

define void @test31(<2 x i64>* %a, <2 x i64> %b) {
  store <2 x i64> %b, <2 x i64>* %a, align 16
  ret void









}

define <4 x float> @test32(<4 x float>* %a) {
  %v = load <4 x float>, <4 x float>* %a, align 16
  ret <4 x float> %v














}

define void @test33(<4 x float>* %a, <4 x float> %b) {
  store <4 x float> %b, <4 x float>* %a, align 16
  ret void














}

define <4 x float> @test32u(<4 x float>* %a) {
  %v = load <4 x float>, <4 x float>* %a, align 8
  ret <4 x float> %v












}

define void @test33u(<4 x float>* %a, <4 x float> %b) {
  store <4 x float> %b, <4 x float>* %a, align 8
  ret void














}

define <4 x i32> @test34(<4 x i32>* %a) {
  %v = load <4 x i32>, <4 x i32>* %a, align 16
  ret <4 x i32> %v














}

define void @test35(<4 x i32>* %a, <4 x i32> %b) {
  store <4 x i32> %b, <4 x i32>* %a, align 16
  ret void














}

define <2 x double> @test40(<2 x i64> %a) {
  %v = uitofp <2 x i64> %a to <2 x double>
  ret <2 x double> %v








}

define <2 x double> @test41(<2 x i64> %a) {
  %v = sitofp <2 x i64> %a to <2 x double>
  ret <2 x double> %v








}

define <2 x i64> @test42(<2 x double> %a) {
  %v = fptoui <2 x double> %a to <2 x i64>
  ret <2 x i64> %v








}

define <2 x i64> @test43(<2 x double> %a) {
  %v = fptosi <2 x double> %a to <2 x i64>
  ret <2 x i64> %v








}

define <2 x float> @test44(<2 x i64> %a) {
  %v = uitofp <2 x i64> %a to <2 x float>
  ret <2 x float> %v




}

define <2 x float> @test45(<2 x i64> %a) {
  %v = sitofp <2 x i64> %a to <2 x float>
  ret <2 x float> %v




}

define <2 x i64> @test46(<2 x float> %a) {
  %v = fptoui <2 x float> %a to <2 x i64>
  ret <2 x i64> %v




}

define <2 x i64> @test47(<2 x float> %a) {
  %v = fptosi <2 x float> %a to <2 x i64>
  ret <2 x i64> %v




}

define <2 x double> @test50(double* %a) {
  %v = load double, double* %a, align 8
  %w = insertelement <2 x double> undef, double %v, i32 0
  %x = insertelement <2 x double> %w, double %v, i32 1
  ret <2 x double> %x








}

define <2 x double> @test51(<2 x double> %a, <2 x double> %b) {
  %v = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 0, i32 0>
  ret <2 x double> %v








}

define <2 x double> @test52(<2 x double> %a, <2 x double> %b) {
  %v = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 0, i32 2>
  ret <2 x double> %v








}

define <2 x double> @test53(<2 x double> %a, <2 x double> %b) {
  %v = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 2, i32 0>
  ret <2 x double> %v








}

define <2 x double> @test54(<2 x double> %a, <2 x double> %b) {
  %v = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 1, i32 2>
  ret <2 x double> %v








}

define <2 x double> @test55(<2 x double> %a, <2 x double> %b) {
  %v = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 1, i32 3>
  ret <2 x double> %v








}

define <2 x i64> @test56(<2 x i64> %a, <2 x i64> %b) {
  %v = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %v








}

define <2 x i64> @test60(<2 x i64> %a, <2 x i64> %b) {
  %v = shl <2 x i64> %a, %b
  ret <2 x i64> %v









}

define <2 x i64> @test61(<2 x i64> %a, <2 x i64> %b) {
  %v = lshr <2 x i64> %a, %b
  ret <2 x i64> %v









}

define <2 x i64> @test62(<2 x i64> %a, <2 x i64> %b) {
  %v = ashr <2 x i64> %a, %b
  ret <2 x i64> %v









}

define double @test63(<2 x double> %a) {
  %v = extractelement <2 x double> %a, i32 0
  ret double %v













}

define double @test64(<2 x double> %a) {
  %v = extractelement <2 x double> %a, i32 1
  ret double %v













}

define <2 x i1> @test65(<2 x i64> %a, <2 x i64> %b) {
  %w = icmp eq <2 x i64> %a, %b
  ret <2 x i1> %w















}

define <2 x i1> @test66(<2 x i64> %a, <2 x i64> %b) {
  %w = icmp ne <2 x i64> %a, %b
  ret <2 x i1> %w















}

define <2 x i1> @test67(<2 x i64> %a, <2 x i64> %b) {
  %w = icmp ult <2 x i64> %a, %b
  ret <2 x i1> %w













}

define <2 x double> @test68(<2 x i32> %a) {
  %w = sitofp <2 x i32> %a to <2 x double>
  ret <2 x double> %w










}

define <2 x double> @test69(<2 x i16> %a) {
  %w = sitofp <2 x i16> %a to <2 x double>
  ret <2 x double> %w


















}

define <2 x double> @test70(<2 x i8> %a) {
  %w = sitofp <2 x i8> %a to <2 x double>
  ret <2 x double> %w


















}

define <2 x i32> @test80(i32 %v) {
  %b1 = insertelement <2 x i32> undef, i32 %v, i32 0
  %b2 = shufflevector <2 x i32> %b1, <2 x i32> undef, <2 x i32> zeroinitializer
  %i = add <2 x i32> %b2, <i32 2, i32 3>
  ret <2 x i32> %i





























}

define <2 x double> @test81(<4 x float> %b) {
  %w = bitcast <4 x float> %b to <2 x double>
  ret <2 x double> %w






}

define double @test82(double %a, double %b, double %c, double %d) {
entry:
  %m = fcmp oeq double %c, %d
  %v = select i1 %m, double %a, double %b
  ret double %v












}
