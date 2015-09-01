




define i32 @test1(float %x) {
   %res = bitcast float %x to i32
   ret i32 %res
}




define <4 x i32> @test2(i32 %x) {
   %res = insertelement <4 x i32>undef, i32 %x, i32 0
   ret <4 x i32>%res
}




define <2 x i64> @test3(i64 %x) {
   %res = insertelement <2 x i64>undef, i64 %x, i32 0
   ret <2 x i64>%res
}




define <4 x i32> @test4(i32* %x) {
   %y = load i32, i32* %x
   %res = insertelement <4 x i32>undef, i32 %y, i32 0
   ret <4 x i32>%res
}




define void @test5(float %x, float* %y) {
   store float %x, float* %y, align 4
   ret void
}




define void @test6(double %x, double* %y) {
   store double %x, double* %y, align 8
   ret void
}




define float @test7(i32* %x) {
   %y = load i32, i32* %x
   %res = bitcast i32 %y to float
   ret float %res
}




define i32 @test8(<4 x i32> %x) {
   %res = extractelement <4 x i32> %x, i32 0
   ret i32 %res
}




define i64 @test9(<2 x i64> %x) {
   %res = extractelement <2 x i64> %x, i32 0
   ret i64 %res
}




define <4 x i32> @test10(i32* %x) {
   %y = load i32, i32* %x, align 4
   %res = insertelement <4 x i32>zeroinitializer, i32 %y, i32 0
   ret <4 x i32>%res
}




define <4 x float> @test11(float* %x) {
   %y = load float, float* %x, align 4
   %res = insertelement <4 x float>zeroinitializer, float %y, i32 0
   ret <4 x float>%res
}




define <2 x double> @test12(double* %x) {
   %y = load double, double* %x, align 8
   %res = insertelement <2 x double>zeroinitializer, double %y, i32 0
   ret <2 x double>%res
}




define <2 x i64> @test13(i64 %x) {
   %res = insertelement <2 x i64>zeroinitializer, i64 %x, i32 0
   ret <2 x i64>%res
}




define <4 x i32> @test14(i32 %x) {
   %res = insertelement <4 x i32>zeroinitializer, i32 %x, i32 0
   ret <4 x i32>%res
}




define <4 x i32> @test15(i32* %x) {
   %y = load i32, i32* %x, align 4
   %res = insertelement <4 x i32>zeroinitializer, i32 %y, i32 0
   ret <4 x i32>%res
}




define <16 x i32> @test16(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <16 x i32>*
  %res = load <16 x i32>, <16 x i32>* %vaddr, align 1
  ret <16 x i32>%res
}




define <16 x i32> @test17(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <16 x i32>*
  %res = load <16 x i32>, <16 x i32>* %vaddr, align 64
  ret <16 x i32>%res
}




define void @test18(i8 * %addr, <8 x i64> %data) {
  %vaddr = bitcast i8* %addr to <8 x i64>*
  store <8 x i64>%data, <8 x i64>* %vaddr, align 64
  ret void
}




define void @test19(i8 * %addr, <16 x i32> %data) {
  %vaddr = bitcast i8* %addr to <16 x i32>*
  store <16 x i32>%data, <16 x i32>* %vaddr, align 1
  ret void
}




define void @test20(i8 * %addr, <16 x i32> %data) {
  %vaddr = bitcast i8* %addr to <16 x i32>*
  store <16 x i32>%data, <16 x i32>* %vaddr, align 64
  ret void
}




define  <8 x i64> @test21(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <8 x i64>*
  %res = load <8 x i64>, <8 x i64>* %vaddr, align 64
  ret <8 x i64>%res
}




define void @test22(i8 * %addr, <8 x i64> %data) {
  %vaddr = bitcast i8* %addr to <8 x i64>*
  store <8 x i64>%data, <8 x i64>* %vaddr, align 1
  ret void
}




define <8 x i64> @test23(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <8 x i64>*
  %res = load <8 x i64>, <8 x i64>* %vaddr, align 1
  ret <8 x i64>%res
}




define void @test24(i8 * %addr, <8 x double> %data) {
  %vaddr = bitcast i8* %addr to <8 x double>*
  store <8 x double>%data, <8 x double>* %vaddr, align 64
  ret void
}




define <8 x double> @test25(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <8 x double>*
  %res = load <8 x double>, <8 x double>* %vaddr, align 64
  ret <8 x double>%res
}




define void @test26(i8 * %addr, <16 x float> %data) {
  %vaddr = bitcast i8* %addr to <16 x float>*
  store <16 x float>%data, <16 x float>* %vaddr, align 64
  ret void
}




define <16 x float> @test27(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <16 x float>*
  %res = load <16 x float>, <16 x float>* %vaddr, align 64
  ret <16 x float>%res
}




define void @test28(i8 * %addr, <8 x double> %data) {
  %vaddr = bitcast i8* %addr to <8 x double>*
  store <8 x double>%data, <8 x double>* %vaddr, align 1
  ret void
}




define <8 x double> @test29(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <8 x double>*
  %res = load <8 x double>, <8 x double>* %vaddr, align 1
  ret <8 x double>%res
}




define void @test30(i8 * %addr, <16 x float> %data) {
  %vaddr = bitcast i8* %addr to <16 x float>*
  store <16 x float>%data, <16 x float>* %vaddr, align 1
  ret void
}




define <16 x float> @test31(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <16 x float>*
  %res = load <16 x float>, <16 x float>* %vaddr, align 1
  ret <16 x float>%res
}




define <16 x i32> @test32(i8 * %addr, <16 x i32> %old, <16 x i32> %mask1) {
  %mask = icmp ne <16 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <16 x i32>*
  %r = load <16 x i32>, <16 x i32>* %vaddr, align 64
  %res = select <16 x i1> %mask, <16 x i32> %r, <16 x i32> %old
  ret <16 x i32>%res
}




define <16 x i32> @test33(i8 * %addr, <16 x i32> %old, <16 x i32> %mask1) {
  %mask = icmp ne <16 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <16 x i32>*
  %r = load <16 x i32>, <16 x i32>* %vaddr, align 1
  %res = select <16 x i1> %mask, <16 x i32> %r, <16 x i32> %old
  ret <16 x i32>%res
}




define <16 x i32> @test34(i8 * %addr, <16 x i32> %mask1) {
  %mask = icmp ne <16 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <16 x i32>*
  %r = load <16 x i32>, <16 x i32>* %vaddr, align 64
  %res = select <16 x i1> %mask, <16 x i32> %r, <16 x i32> zeroinitializer
  ret <16 x i32>%res
}




define <16 x i32> @test35(i8 * %addr, <16 x i32> %mask1) {
  %mask = icmp ne <16 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <16 x i32>*
  %r = load <16 x i32>, <16 x i32>* %vaddr, align 1
  %res = select <16 x i1> %mask, <16 x i32> %r, <16 x i32> zeroinitializer
  ret <16 x i32>%res
}




define <8 x i64> @test36(i8 * %addr, <8 x i64> %old, <8 x i64> %mask1) {
  %mask = icmp ne <8 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x i64>*
  %r = load <8 x i64>, <8 x i64>* %vaddr, align 64
  %res = select <8 x i1> %mask, <8 x i64> %r, <8 x i64> %old
  ret <8 x i64>%res
}




define <8 x i64> @test37(i8 * %addr, <8 x i64> %old, <8 x i64> %mask1) {
  %mask = icmp ne <8 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x i64>*
  %r = load <8 x i64>, <8 x i64>* %vaddr, align 1
  %res = select <8 x i1> %mask, <8 x i64> %r, <8 x i64> %old
  ret <8 x i64>%res
}




define <8 x i64> @test38(i8 * %addr, <8 x i64> %mask1) {
  %mask = icmp ne <8 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x i64>*
  %r = load <8 x i64>, <8 x i64>* %vaddr, align 64
  %res = select <8 x i1> %mask, <8 x i64> %r, <8 x i64> zeroinitializer
  ret <8 x i64>%res
}




define <8 x i64> @test39(i8 * %addr, <8 x i64> %mask1) {
  %mask = icmp ne <8 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x i64>*
  %r = load <8 x i64>, <8 x i64>* %vaddr, align 1
  %res = select <8 x i1> %mask, <8 x i64> %r, <8 x i64> zeroinitializer
  ret <8 x i64>%res
}




define <16 x float> @test40(i8 * %addr, <16 x float> %old, <16 x float> %mask1) {
  %mask = fcmp one <16 x float> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <16 x float>*
  %r = load <16 x float>, <16 x float>* %vaddr, align 64
  %res = select <16 x i1> %mask, <16 x float> %r, <16 x float> %old
  ret <16 x float>%res
}




define <16 x float> @test41(i8 * %addr, <16 x float> %old, <16 x float> %mask1) {
  %mask = fcmp one <16 x float> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <16 x float>*
  %r = load <16 x float>, <16 x float>* %vaddr, align 1
  %res = select <16 x i1> %mask, <16 x float> %r, <16 x float> %old
  ret <16 x float>%res
}




define <16 x float> @test42(i8 * %addr, <16 x float> %mask1) {
  %mask = fcmp one <16 x float> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <16 x float>*
  %r = load <16 x float>, <16 x float>* %vaddr, align 64
  %res = select <16 x i1> %mask, <16 x float> %r, <16 x float> zeroinitializer
  ret <16 x float>%res
}




define <16 x float> @test43(i8 * %addr, <16 x float> %mask1) {
  %mask = fcmp one <16 x float> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <16 x float>*
  %r = load <16 x float>, <16 x float>* %vaddr, align 1
  %res = select <16 x i1> %mask, <16 x float> %r, <16 x float> zeroinitializer
  ret <16 x float>%res
}




define <8 x double> @test44(i8 * %addr, <8 x double> %old, <8 x double> %mask1) {
  %mask = fcmp one <8 x double> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x double>*
  %r = load <8 x double>, <8 x double>* %vaddr, align 64
  %res = select <8 x i1> %mask, <8 x double> %r, <8 x double> %old
  ret <8 x double>%res
}




define <8 x double> @test45(i8 * %addr, <8 x double> %old, <8 x double> %mask1) {
  %mask = fcmp one <8 x double> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x double>*
  %r = load <8 x double>, <8 x double>* %vaddr, align 1
  %res = select <8 x i1> %mask, <8 x double> %r, <8 x double> %old
  ret <8 x double>%res
}




define <8 x double> @test46(i8 * %addr, <8 x double> %mask1) {
  %mask = fcmp one <8 x double> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x double>*
  %r = load <8 x double>, <8 x double>* %vaddr, align 64
  %res = select <8 x i1> %mask, <8 x double> %r, <8 x double> zeroinitializer
  ret <8 x double>%res
}




define <8 x double> @test47(i8 * %addr, <8 x double> %mask1) {
  %mask = fcmp one <8 x double> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x double>*
  %r = load <8 x double>, <8 x double>* %vaddr, align 1
  %res = select <8 x i1> %mask, <8 x double> %r, <8 x double> zeroinitializer
  ret <8 x double>%res
}
