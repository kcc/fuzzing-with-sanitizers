



define i32 @test00(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.C2.cmpeqp(i64 %Rs, i64 %Rt)
  ret i32 %0
}



define i32 @test01(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.C2.cmpgtp(i64 %Rs, i64 %Rt)
  ret i32 %0
}



define i32 @test02(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.C2.cmpgtup(i64 %Rs, i64 %Rt)
  ret i32 %0
}



define i32 @test10(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.rcmpeq(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test11(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.rcmpneq(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test12(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.rcmpeqi(i32 %Rs, i32 23)
  ret i32 %0
}



define i32 @test13(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.rcmpneqi(i32 %Rs, i32 47)
  ret i32 %0
}



define i32 @test20(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmpbeq(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test21(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmpbgt(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test22(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmpbgtu(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test23(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmpbeqi(i32 %Rs, i32 56)
  ret i32 %0
}



define i32 @test24(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmpbgti(i32 %Rs, i32 29)
  ret i32 %0
}



define i32 @test25(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmpbgtui(i32 %Rs, i32 111)
  ret i32 %0
}



define i32 @test30(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmpheq(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test31(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmphgt(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test32(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmphgtu(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test33(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmpheqi(i32 %Rs, i32 -123)
  ret i32 %0
}



define i32 @test34(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmphgti(i32 %Rs, i32 -3)
  ret i32 %0
}



define i32 @test35(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.cmphgtui(i32 %Rs, i32 13)
  ret i32 %0
}



define i64 @test40(i32 %Pu, i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.C2.vmux(i32 %Pu, i64 %Rs, i64 %Rt)
  ret i64 %0
}



define i32 @test41(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.vcmpbeq.any(i64 %Rs, i64 %Rt)
  ret i32 %0
}



define i64 @test50(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A2.addp(i64 %Rs, i64 %Rt)
  ret i64 %0
}



define i64 @test51(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A2.addpsat(i64 %Rs, i64 %Rt)
  ret i64 %0
}



define i64 @test52(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A2.subp(i64 %Rs, i64 %Rt)
  ret i64 %0
}



define i64 @test53(i32 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A2.addsp(i32 %Rs, i64 %Rt)
  ret i64 %0
}



define i64 @test54(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A2.andp(i64 %Rs, i64 %Rt)
  ret i64 %0
}



define i64 @test55(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A2.orp(i64 %Rs, i64 %Rt)
  ret i64 %0
}



define i64 @test56(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A2.xorp(i64 %Rs, i64 %Rt)
  ret i64 %0
}



define i64 @test57(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A4.andnp(i64 %Rs, i64 %Rt)
  ret i64 %0
}



define i64 @test58(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A4.ornp(i64 %Rs, i64 %Rt)
  ret i64 %0
}



define i32 @test60(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.l16.ll(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test61(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.l16.hl(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test62(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.l16.sat.ll(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test63(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.l16.sat.hl(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test64(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.h16.ll(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test65(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.h16.lh(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test66(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.h16.hl(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test67(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.h16.hh(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test68(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.h16.sat.ll(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test69(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.h16.sat.lh(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test6A(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.h16.sat.hl(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test6B(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.addh.h16.sat.hh(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test70(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.l16.ll(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test71(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.l16.hl(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test72(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.l16.sat.ll(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test73(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.l16.sat.hl(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test74(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.h16.ll(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test75(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.h16.lh(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test76(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.h16.hl(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test77(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.h16.hh(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test78(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.h16.sat.ll(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test79(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.h16.sat.lh(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test7A(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.h16.sat.hl(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test7B(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A2.subh.h16.sat.hh(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test90(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S4.andi.asl.ri(i32 1, i32 %Rs, i32 2)
  ret i32 %0
}



define i32 @test91(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S4.ori.asl.ri(i32 1, i32 %Rs, i32 2)
  ret i32 %0
}



define i32 @test92(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S4.addi.asl.ri(i32 1, i32 %Rs, i32 2)
  ret i32 %0
}



define i32 @test93(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S4.subi.asl.ri(i32 1, i32 %Rs, i32 2)
  ret i32 %0
}



define i32 @test94(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S4.andi.lsr.ri(i32 1, i32 %Rs, i32 2)
  ret i32 %0
}



define i32 @test95(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S4.ori.lsr.ri(i32 1, i32 %Rs, i32 2)
  ret i32 %0
}



define i32 @test96(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S4.addi.lsr.ri(i32 1, i32 %Rs, i32 2)
  ret i32 %0
}



define i32 @test97(i32 %Rs) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S4.subi.lsr.ri(i32 1, i32 %Rs, i32 2)
  ret i32 %0
}



define i64 @test100(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i64 @llvm.hexagon.A4.bitsplit(i32 %Rs, i32 %Rt)
  ret i64 %0
}



define i32 @test101(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.A4.modwrapu(i32 %Rs, i32 %Rt)
  ret i32 %0
}



define i32 @test102(i64 %Rs, i64 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S2.parityp(i64 %Rs, i64 %Rt)
  ret i32 %0
}



define i32 @test103(i32 %Rs, i32 %Rt) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S4.parity(i32 %Rs, i32 %Rt)
  ret i32 %0
}

declare i32 @llvm.hexagon.C2.cmpeqp(i64, i64) #1
declare i32 @llvm.hexagon.C2.cmpgtp(i64, i64) #1
declare i32 @llvm.hexagon.C2.cmpgtup(i64, i64) #1
declare i32 @llvm.hexagon.A4.rcmpeq(i32, i32) #1
declare i32 @llvm.hexagon.A4.rcmpneq(i32, i32) #1
declare i32 @llvm.hexagon.A4.rcmpeqi(i32, i32) #1
declare i32 @llvm.hexagon.A4.rcmpneqi(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmpbeq(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmpbgt(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmpbgtu(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmpbeqi(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmpbgti(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmpbgtui(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmpheq(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmphgt(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmphgtu(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmpheqi(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmphgti(i32, i32) #1
declare i32 @llvm.hexagon.A4.cmphgtui(i32, i32) #1
declare i64 @llvm.hexagon.C2.vmux(i32, i64, i64) #1
declare i32 @llvm.hexagon.A4.vcmpbeq.any(i64, i64) #1
declare i64 @llvm.hexagon.A2.addp(i64, i64) #1
declare i64 @llvm.hexagon.A2.addpsat(i64, i64) #1
declare i64 @llvm.hexagon.A2.subp(i64, i64) #1
declare i64 @llvm.hexagon.A2.addsp(i32, i64) #1
declare i64 @llvm.hexagon.A2.andp(i64, i64) #1
declare i64 @llvm.hexagon.A2.orp(i64, i64) #1
declare i64 @llvm.hexagon.A2.xorp(i64, i64) #1
declare i64 @llvm.hexagon.A4.ornp(i64, i64) #1
declare i64 @llvm.hexagon.A4.andnp(i64, i64) #1
declare i32 @llvm.hexagon.A2.addh.l16.ll(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.l16.hl(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.l16.sat.ll(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.l16.sat.hl(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.h16.ll(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.h16.lh(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.h16.hl(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.h16.hh(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.h16.sat.ll(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.h16.sat.lh(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.h16.sat.hl(i32, i32) #1
declare i32 @llvm.hexagon.A2.addh.h16.sat.hh(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.l16.ll(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.l16.hl(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.l16.sat.ll(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.l16.sat.hl(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.h16.ll(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.h16.lh(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.h16.hl(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.h16.hh(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.h16.sat.ll(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.h16.sat.lh(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.h16.sat.hl(i32, i32) #1
declare i32 @llvm.hexagon.A2.subh.h16.sat.hh(i32, i32) #1
declare i64 @llvm.hexagon.A4.bitsplit(i32, i32) #1
declare i32 @llvm.hexagon.A4.modwrapu(i32, i32) #1
declare i32 @llvm.hexagon.S2.parityp(i64, i64) #1
declare i32 @llvm.hexagon.S4.parity(i32, i32) #1
declare i32 @llvm.hexagon.S4.andi.asl.ri(i32, i32, i32) #1
declare i32 @llvm.hexagon.S4.ori.asl.ri(i32, i32, i32) #1
declare i32 @llvm.hexagon.S4.addi.asl.ri(i32, i32, i32) #1
declare i32 @llvm.hexagon.S4.subi.asl.ri(i32, i32, i32) #1
declare i32 @llvm.hexagon.S4.andi.lsr.ri(i32, i32, i32) #1
declare i32 @llvm.hexagon.S4.ori.lsr.ri(i32, i32, i32) #1
declare i32 @llvm.hexagon.S4.addi.lsr.ri(i32, i32, i32) #1
declare i32 @llvm.hexagon.S4.subi.lsr.ri(i32, i32, i32) #1

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
