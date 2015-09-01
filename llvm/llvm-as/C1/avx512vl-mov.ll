




define <8 x i32> @test_256_1(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <8 x i32>*
  %res = load <8 x i32>, <8 x i32>* %vaddr, align 1
  ret <8 x i32>%res
}




define <8 x i32> @test_256_2(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <8 x i32>*
  %res = load <8 x i32>, <8 x i32>* %vaddr, align 32
  ret <8 x i32>%res
}




define void @test_256_3(i8 * %addr, <4 x i64> %data) {
  %vaddr = bitcast i8* %addr to <4 x i64>*
  store <4 x i64>%data, <4 x i64>* %vaddr, align 32
  ret void
}




define void @test_256_4(i8 * %addr, <8 x i32> %data) {
  %vaddr = bitcast i8* %addr to <8 x i32>*
  store <8 x i32>%data, <8 x i32>* %vaddr, align 1
  ret void
}




define void @test_256_5(i8 * %addr, <8 x i32> %data) {
  %vaddr = bitcast i8* %addr to <8 x i32>*
  store <8 x i32>%data, <8 x i32>* %vaddr, align 32
  ret void
}




define  <4 x i64> @test_256_6(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <4 x i64>*
  %res = load <4 x i64>, <4 x i64>* %vaddr, align 32
  ret <4 x i64>%res
}




define void @test_256_7(i8 * %addr, <4 x i64> %data) {
  %vaddr = bitcast i8* %addr to <4 x i64>*
  store <4 x i64>%data, <4 x i64>* %vaddr, align 1
  ret void
}




define <4 x i64> @test_256_8(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <4 x i64>*
  %res = load <4 x i64>, <4 x i64>* %vaddr, align 1
  ret <4 x i64>%res
}




define void @test_256_9(i8 * %addr, <4 x double> %data) {
  %vaddr = bitcast i8* %addr to <4 x double>*
  store <4 x double>%data, <4 x double>* %vaddr, align 32
  ret void
}




define <4 x double> @test_256_10(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <4 x double>*
  %res = load <4 x double>, <4 x double>* %vaddr, align 32
  ret <4 x double>%res
}




define void @test_256_11(i8 * %addr, <8 x float> %data) {
  %vaddr = bitcast i8* %addr to <8 x float>*
  store <8 x float>%data, <8 x float>* %vaddr, align 32
  ret void
}




define <8 x float> @test_256_12(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <8 x float>*
  %res = load <8 x float>, <8 x float>* %vaddr, align 32
  ret <8 x float>%res
}




define void @test_256_13(i8 * %addr, <4 x double> %data) {
  %vaddr = bitcast i8* %addr to <4 x double>*
  store <4 x double>%data, <4 x double>* %vaddr, align 1
  ret void
}




define <4 x double> @test_256_14(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <4 x double>*
  %res = load <4 x double>, <4 x double>* %vaddr, align 1
  ret <4 x double>%res
}




define void @test_256_15(i8 * %addr, <8 x float> %data) {
  %vaddr = bitcast i8* %addr to <8 x float>*
  store <8 x float>%data, <8 x float>* %vaddr, align 1
  ret void
}




define <8 x float> @test_256_16(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <8 x float>*
  %res = load <8 x float>, <8 x float>* %vaddr, align 1
  ret <8 x float>%res
}




define <8 x i32> @test_256_17(i8 * %addr, <8 x i32> %old, <8 x i32> %mask1) {
  %mask = icmp ne <8 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x i32>*
  %r = load <8 x i32>, <8 x i32>* %vaddr, align 32
  %res = select <8 x i1> %mask, <8 x i32> %r, <8 x i32> %old
  ret <8 x i32>%res
}




define <8 x i32> @test_256_18(i8 * %addr, <8 x i32> %old, <8 x i32> %mask1) {
  %mask = icmp ne <8 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x i32>*
  %r = load <8 x i32>, <8 x i32>* %vaddr, align 1
  %res = select <8 x i1> %mask, <8 x i32> %r, <8 x i32> %old
  ret <8 x i32>%res
}




define <8 x i32> @test_256_19(i8 * %addr, <8 x i32> %mask1) {
  %mask = icmp ne <8 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x i32>*
  %r = load <8 x i32>, <8 x i32>* %vaddr, align 32
  %res = select <8 x i1> %mask, <8 x i32> %r, <8 x i32> zeroinitializer
  ret <8 x i32>%res
}




define <8 x i32> @test_256_20(i8 * %addr, <8 x i32> %mask1) {
  %mask = icmp ne <8 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x i32>*
  %r = load <8 x i32>, <8 x i32>* %vaddr, align 1
  %res = select <8 x i1> %mask, <8 x i32> %r, <8 x i32> zeroinitializer
  ret <8 x i32>%res
}




define <4 x i64> @test_256_21(i8 * %addr, <4 x i64> %old, <4 x i64> %mask1) {
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x i64>*
  %r = load <4 x i64>, <4 x i64>* %vaddr, align 32
  %res = select <4 x i1> %mask, <4 x i64> %r, <4 x i64> %old
  ret <4 x i64>%res
}




define <4 x i64> @test_256_22(i8 * %addr, <4 x i64> %old, <4 x i64> %mask1) {
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x i64>*
  %r = load <4 x i64>, <4 x i64>* %vaddr, align 1
  %res = select <4 x i1> %mask, <4 x i64> %r, <4 x i64> %old
  ret <4 x i64>%res
}




define <4 x i64> @test_256_23(i8 * %addr, <4 x i64> %mask1) {
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x i64>*
  %r = load <4 x i64>, <4 x i64>* %vaddr, align 32
  %res = select <4 x i1> %mask, <4 x i64> %r, <4 x i64> zeroinitializer
  ret <4 x i64>%res
}




define <4 x i64> @test_256_24(i8 * %addr, <4 x i64> %mask1) {
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x i64>*
  %r = load <4 x i64>, <4 x i64>* %vaddr, align 1
  %res = select <4 x i1> %mask, <4 x i64> %r, <4 x i64> zeroinitializer
  ret <4 x i64>%res
}




define <8 x float> @test_256_25(i8 * %addr, <8 x float> %old, <8 x float> %mask1) {
  %mask = fcmp one <8 x float> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x float>*
  %r = load <8 x float>, <8 x float>* %vaddr, align 32
  %res = select <8 x i1> %mask, <8 x float> %r, <8 x float> %old
  ret <8 x float>%res
}




define <8 x float> @test_256_26(i8 * %addr, <8 x float> %old, <8 x float> %mask1) {
  %mask = fcmp one <8 x float> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x float>*
  %r = load <8 x float>, <8 x float>* %vaddr, align 1
  %res = select <8 x i1> %mask, <8 x float> %r, <8 x float> %old
  ret <8 x float>%res
}




define <8 x float> @test_256_27(i8 * %addr, <8 x float> %mask1) {
  %mask = fcmp one <8 x float> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x float>*
  %r = load <8 x float>, <8 x float>* %vaddr, align 32
  %res = select <8 x i1> %mask, <8 x float> %r, <8 x float> zeroinitializer
  ret <8 x float>%res
}




define <8 x float> @test_256_28(i8 * %addr, <8 x float> %mask1) {
  %mask = fcmp one <8 x float> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <8 x float>*
  %r = load <8 x float>, <8 x float>* %vaddr, align 1
  %res = select <8 x i1> %mask, <8 x float> %r, <8 x float> zeroinitializer
  ret <8 x float>%res
}




define <4 x double> @test_256_29(i8 * %addr, <4 x double> %old, <4 x i64> %mask1) {
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x double>*
  %r = load <4 x double>, <4 x double>* %vaddr, align 32
  %res = select <4 x i1> %mask, <4 x double> %r, <4 x double> %old
  ret <4 x double>%res
}




define <4 x double> @test_256_30(i8 * %addr, <4 x double> %old, <4 x i64> %mask1) {
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x double>*
  %r = load <4 x double>, <4 x double>* %vaddr, align 1
  %res = select <4 x i1> %mask, <4 x double> %r, <4 x double> %old
  ret <4 x double>%res
}




define <4 x double> @test_256_31(i8 * %addr, <4 x i64> %mask1) {
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x double>*
  %r = load <4 x double>, <4 x double>* %vaddr, align 32
  %res = select <4 x i1> %mask, <4 x double> %r, <4 x double> zeroinitializer
  ret <4 x double>%res
}




define <4 x double> @test_256_32(i8 * %addr, <4 x i64> %mask1) {
  %mask = icmp ne <4 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x double>*
  %r = load <4 x double>, <4 x double>* %vaddr, align 1
  %res = select <4 x i1> %mask, <4 x double> %r, <4 x double> zeroinitializer
  ret <4 x double>%res
}




define <4 x i32> @test_128_1(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <4 x i32>*
  %res = load <4 x i32>, <4 x i32>* %vaddr, align 1
  ret <4 x i32>%res
}




define <4 x i32> @test_128_2(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <4 x i32>*
  %res = load <4 x i32>, <4 x i32>* %vaddr, align 16
  ret <4 x i32>%res
}




define void @test_128_3(i8 * %addr, <2 x i64> %data) {
  %vaddr = bitcast i8* %addr to <2 x i64>*
  store <2 x i64>%data, <2 x i64>* %vaddr, align 16
  ret void
}




define void @test_128_4(i8 * %addr, <4 x i32> %data) {
  %vaddr = bitcast i8* %addr to <4 x i32>*
  store <4 x i32>%data, <4 x i32>* %vaddr, align 1
  ret void
}




define void @test_128_5(i8 * %addr, <4 x i32> %data) {
  %vaddr = bitcast i8* %addr to <4 x i32>*
  store <4 x i32>%data, <4 x i32>* %vaddr, align 16
  ret void
}




define  <2 x i64> @test_128_6(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <2 x i64>*
  %res = load <2 x i64>, <2 x i64>* %vaddr, align 16
  ret <2 x i64>%res
}




define void @test_128_7(i8 * %addr, <2 x i64> %data) {
  %vaddr = bitcast i8* %addr to <2 x i64>*
  store <2 x i64>%data, <2 x i64>* %vaddr, align 1
  ret void
}




define <2 x i64> @test_128_8(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <2 x i64>*
  %res = load <2 x i64>, <2 x i64>* %vaddr, align 1
  ret <2 x i64>%res
}




define void @test_128_9(i8 * %addr, <2 x double> %data) {
  %vaddr = bitcast i8* %addr to <2 x double>*
  store <2 x double>%data, <2 x double>* %vaddr, align 16
  ret void
}




define <2 x double> @test_128_10(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <2 x double>*
  %res = load <2 x double>, <2 x double>* %vaddr, align 16
  ret <2 x double>%res
}




define void @test_128_11(i8 * %addr, <4 x float> %data) {
  %vaddr = bitcast i8* %addr to <4 x float>*
  store <4 x float>%data, <4 x float>* %vaddr, align 16
  ret void
}




define <4 x float> @test_128_12(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <4 x float>*
  %res = load <4 x float>, <4 x float>* %vaddr, align 16
  ret <4 x float>%res
}




define void @test_128_13(i8 * %addr, <2 x double> %data) {
  %vaddr = bitcast i8* %addr to <2 x double>*
  store <2 x double>%data, <2 x double>* %vaddr, align 1
  ret void
}




define <2 x double> @test_128_14(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <2 x double>*
  %res = load <2 x double>, <2 x double>* %vaddr, align 1
  ret <2 x double>%res
}




define void @test_128_15(i8 * %addr, <4 x float> %data) {
  %vaddr = bitcast i8* %addr to <4 x float>*
  store <4 x float>%data, <4 x float>* %vaddr, align 1
  ret void
}




define <4 x float> @test_128_16(i8 * %addr) {
  %vaddr = bitcast i8* %addr to <4 x float>*
  %res = load <4 x float>, <4 x float>* %vaddr, align 1
  ret <4 x float>%res
}




define <4 x i32> @test_128_17(i8 * %addr, <4 x i32> %old, <4 x i32> %mask1) {
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x i32>*
  %r = load <4 x i32>, <4 x i32>* %vaddr, align 16
  %res = select <4 x i1> %mask, <4 x i32> %r, <4 x i32> %old
  ret <4 x i32>%res
}




define <4 x i32> @test_128_18(i8 * %addr, <4 x i32> %old, <4 x i32> %mask1) {
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x i32>*
  %r = load <4 x i32>, <4 x i32>* %vaddr, align 1
  %res = select <4 x i1> %mask, <4 x i32> %r, <4 x i32> %old
  ret <4 x i32>%res
}




define <4 x i32> @test_128_19(i8 * %addr, <4 x i32> %mask1) {
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x i32>*
  %r = load <4 x i32>, <4 x i32>* %vaddr, align 16
  %res = select <4 x i1> %mask, <4 x i32> %r, <4 x i32> zeroinitializer
  ret <4 x i32>%res
}




define <4 x i32> @test_128_20(i8 * %addr, <4 x i32> %mask1) {
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x i32>*
  %r = load <4 x i32>, <4 x i32>* %vaddr, align 1
  %res = select <4 x i1> %mask, <4 x i32> %r, <4 x i32> zeroinitializer
  ret <4 x i32>%res
}




define <2 x i64> @test_128_21(i8 * %addr, <2 x i64> %old, <2 x i64> %mask1) {
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <2 x i64>*
  %r = load <2 x i64>, <2 x i64>* %vaddr, align 16
  %res = select <2 x i1> %mask, <2 x i64> %r, <2 x i64> %old
  ret <2 x i64>%res
}




define <2 x i64> @test_128_22(i8 * %addr, <2 x i64> %old, <2 x i64> %mask1) {
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <2 x i64>*
  %r = load <2 x i64>, <2 x i64>* %vaddr, align 1
  %res = select <2 x i1> %mask, <2 x i64> %r, <2 x i64> %old
  ret <2 x i64>%res
}




define <2 x i64> @test_128_23(i8 * %addr, <2 x i64> %mask1) {
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <2 x i64>*
  %r = load <2 x i64>, <2 x i64>* %vaddr, align 16
  %res = select <2 x i1> %mask, <2 x i64> %r, <2 x i64> zeroinitializer
  ret <2 x i64>%res
}




define <2 x i64> @test_128_24(i8 * %addr, <2 x i64> %mask1) {
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <2 x i64>*
  %r = load <2 x i64>, <2 x i64>* %vaddr, align 1
  %res = select <2 x i1> %mask, <2 x i64> %r, <2 x i64> zeroinitializer
  ret <2 x i64>%res
}




define <4 x float> @test_128_25(i8 * %addr, <4 x float> %old, <4 x i32> %mask1) {
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x float>*
  %r = load <4 x float>, <4 x float>* %vaddr, align 16
  %res = select <4 x i1> %mask, <4 x float> %r, <4 x float> %old
  ret <4 x float>%res
}




define <4 x float> @test_128_26(i8 * %addr, <4 x float> %old, <4 x i32> %mask1) {
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x float>*
  %r = load <4 x float>, <4 x float>* %vaddr, align 1
  %res = select <4 x i1> %mask, <4 x float> %r, <4 x float> %old
  ret <4 x float>%res
}




define <4 x float> @test_128_27(i8 * %addr, <4 x i32> %mask1) {
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x float>*
  %r = load <4 x float>, <4 x float>* %vaddr, align 16
  %res = select <4 x i1> %mask, <4 x float> %r, <4 x float> zeroinitializer
  ret <4 x float>%res
}




define <4 x float> @test_128_28(i8 * %addr, <4 x i32> %mask1) {
  %mask = icmp ne <4 x i32> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <4 x float>*
  %r = load <4 x float>, <4 x float>* %vaddr, align 1
  %res = select <4 x i1> %mask, <4 x float> %r, <4 x float> zeroinitializer
  ret <4 x float>%res
}




define <2 x double> @test_128_29(i8 * %addr, <2 x double> %old, <2 x i64> %mask1) {
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <2 x double>*
  %r = load <2 x double>, <2 x double>* %vaddr, align 16
  %res = select <2 x i1> %mask, <2 x double> %r, <2 x double> %old
  ret <2 x double>%res
}




define <2 x double> @test_128_30(i8 * %addr, <2 x double> %old, <2 x i64> %mask1) {
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <2 x double>*
  %r = load <2 x double>, <2 x double>* %vaddr, align 1
  %res = select <2 x i1> %mask, <2 x double> %r, <2 x double> %old
  ret <2 x double>%res
}




define <2 x double> @test_128_31(i8 * %addr, <2 x i64> %mask1) {
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <2 x double>*
  %r = load <2 x double>, <2 x double>* %vaddr, align 16
  %res = select <2 x i1> %mask, <2 x double> %r, <2 x double> zeroinitializer
  ret <2 x double>%res
}




define <2 x double> @test_128_32(i8 * %addr, <2 x i64> %mask1) {
  %mask = icmp ne <2 x i64> %mask1, zeroinitializer
  %vaddr = bitcast i8* %addr to <2 x double>*
  %r = load <2 x double>, <2 x double>* %vaddr, align 1
  %res = select <2 x i1> %mask, <2 x double> %r, <2 x double> zeroinitializer
  ret <2 x double>%res
}

