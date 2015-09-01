









define void @testlowercall0() nounwind {
entry:
  tail call void @f0(double 5.000000e+00, double 6.000000e+00) nounwind
  ret void
}

declare void @f0(double, double)





define void @testlowercall1() nounwind {
entry:
  tail call void @f1(float 8.000000e+00, float 9.000000e+00) nounwind
  ret void
}

declare void @f1(float, float)





define void @testlowercall2() nounwind {
entry:
  tail call void @f2(float 8.000000e+00, double 6.000000e+00) nounwind
  ret void
}

declare void @f2(float, double)





define void @testlowercall3() nounwind {
entry:
  tail call void @f3(double 5.000000e+00, float 9.000000e+00) nounwind
  ret void
}

declare void @f3(double, float)







define void @testlowercall4() nounwind {
entry:
  tail call void @f4(i32 12, i32 13, i32 14, i32 15) nounwind
  ret void
}

declare void @f4(i32, i32, i32, i32)







define void @testlowercall5() nounwind {
entry:
  tail call void @f5(double 1.500000e+01, i32 23, double 1.700000e+01) nounwind
  ret void
}

declare void @f5(double, i32, double)






define void @testlowercall6() nounwind {
entry:
  tail call void @f6(double 2.500000e+01, i32 33, i32 24) nounwind
  ret void
}

declare void @f6(double, i32, i32)






define void @testlowercall7() nounwind {
entry:
  tail call void @f7(float 1.800000e+01, i32 43, i32 34) nounwind
  ret void
}

declare void @f7(float, i32, i32)








define void @testlowercall8() nounwind {
entry:
  tail call void @f8(i32 22, i32 53, i32 44, double 4.000000e+00) nounwind
  ret void
}

declare void @f8(i32, i32, i32, double)







define void @testlowercall9() nounwind {
entry:
  tail call void @f9(i32 32, i32 63, i32 54, float 1.100000e+01) nounwind
  ret void
}

declare void @f9(i32, i32, i32, float)












define void @testlowercall10() nounwind {
entry:
  tail call void @f10(i32 42, i32 73, double 2.700000e+01) nounwind
  ret void
}

declare void @f10(i32, i32, double)










define void @testlowercall11() nounwind {
entry:
  tail call void @f11(i32 52, double 1.600000e+01) nounwind
  ret void
}

declare void @f11(i32, double)







define void @testlowercall12() nounwind {
entry:
  tail call void @f12(float 2.800000e+01, float 1.900000e+01, float 1.000000e+01, float 2.100000e+01) nounwind
  ret void
}

declare void @f12(float, float, float, float)







define void @testlowercall13() nounwind {
entry:
  tail call void @f13(float 3.800000e+01, i32 83, float 2.000000e+01, i32 25) nounwind
  ret void
}


declare void @f13(float, i32, float, i32)






define void @testlowercall14() nounwind {
entry:
  tail call void @f14(double 3.500000e+01, float 2.900000e+01, float 3.000000e+01) nounwind
  ret void
}

declare void @f14(double, float, float)











define void @testlowercall15() nounwind {
entry:
  tail call void @f15(float 4.800000e+01, float 3.900000e+01, double 3.700000e+01) nounwind
  ret void
}

declare void @f15(float, float, double)







define void @testlowercall16() nounwind {
entry:
  tail call void @f16(i32 62, float 4.900000e+01, i32 64, float 3.100000e+01) nounwind
  ret void
}

declare void @f16(i32, float, i32, float)







define void @testlowercall17() nounwind {
entry:
  tail call void @f17(i32 72, float 5.900000e+01, i32 74, i32 35) nounwind
  ret void
}

declare void @f17(i32, float, i32, i32)







define void @testlowercall18() nounwind {
entry:
  tail call void @f18(i32 82, i32 93, float 4.000000e+01, i32 45) nounwind
  ret void
}

declare void @f18(i32, i32, float, i32)













define void @testlowercall20() nounwind {
entry:
  tail call void @f20(i32 92, double 2.600000e+01, double 4.700000e+01) nounwind
  ret void
}

declare void @f20(i32, double, double)





define void @testlowercall21() nounwind {
entry:
  tail call void @f21(float 5.800000e+01, i32 103) nounwind
  ret void
}

declare void @f21(float, i32)











define void @testlowercall22() nounwind {
entry:
  tail call void @f22(float 6.800000e+01, i32 113, double 5.700000e+01) nounwind
  ret void
}

declare void @f22(float, i32, double)





define void @testlowercall23() nounwind {
entry:
  tail call void @f23(double 4.500000e+01, i32 123) nounwind
  ret void
}

declare void @f23(double, i32)







define void @testlowercall24() nounwind {
entry:
  tail call void @f24(double 5.500000e+01, i32 133, double 6.700000e+01) nounwind
  ret void
}

declare void @f24(double, i32, double)














define void @testlowercall25() nounwind {
entry:
  tail call void @f12(float 2.800000e+01, float 1.900000e+01, float 1.000000e+01, float 2.100000e+01) nounwind
  tail call void @f13(float 3.800000e+01, i32 83, float 2.000000e+01, i32 25) nounwind
  tail call void @f18(i32 82, i32 93, float 4.000000e+01, i32 45) nounwind
  ret void
}
