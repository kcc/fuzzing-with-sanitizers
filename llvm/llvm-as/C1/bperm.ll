
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define zeroext i32 @bs4(i32 zeroext %a) #0 {
entry:
  %0 = tail call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %0







}

define i64 @bs8(i64 %x) #0 {
entry:
  %0 = tail call i64 @llvm.bswap.i64(i64 %x)
  ret i64 %0
















}

define i64 @test1(i64 %i0, i64 %i1) #0 {
entry:
  %0 = lshr i64 %i1, 8
  %and = and i64 %0, 5963776000
  ret i64 %and







}

define i64 @test2(i64 %i0, i64 %i1) #0 {
entry:
  %0 = lshr i64 %i1, 6
  %and = and i64 %0, 133434808670355456
  ret i64 %and









}

define i64 @test3(i64 %i0, i64 %i1) #0 {
entry:
  %0 = shl i64 %i0, 34
  %and = and i64 %0, 191795733152661504
  ret i64 %and








}

define i64 @test4(i64 %i0, i64 %i1) #0 {
entry:
  %0 = lshr i64 %i1, 15
  %and = and i64 %0, 58195968
  ret i64 %and





}

define i64 @test5(i64 %i0, i64 %i1) #0 {
entry:
  %0 = shl i64 %i1, 12
  %and = and i64 %0, 127252959854592
  ret i64 %and








}


define zeroext i32 @test6(i32 zeroext %x) #0 {
entry:
  %and = lshr i32 %x, 16
  %shr = and i32 %and, 255
  %and1 = shl i32 %x, 16
  %shl = and i32 %and1, 16711680
  %or = or i32 %shr, %shl
  ret i32 %or






}

define i64 @test7(i64 %i0, i64 %i1) #0 {
entry:
  %0 = lshr i64 %i0, 5
  %and = and i64 %0, 58195968
  ret i64 %and






}

define i64 @test8(i64 %i0, i64 %i1) #0 {
entry:
  %0 = lshr i64 %i0, 1
  %and = and i64 %0, 169172533248
  ret i64 %and








}

define i64 @test9(i64 %i0, i64 %i1) #0 {
entry:
  %0 = lshr i64 %i1, 14
  %and = and i64 %0, 18848677888
  %1 = shl i64 %i1, 51
  %and3 = and i64 %1, 405323966463344640
  %or4 = or i64 %and, %and3
  ret i64 %or4











}

define i64 @test10(i64 %i0, i64 %i1) #0 {
entry:
  %0 = shl i64 %i0, 37
  %and = and i64 %0, 15881483390550016
  %1 = shl i64 %i0, 25
  %and3 = and i64 %1, 2473599172608
  %or4 = or i64 %and, %and3
  ret i64 %or4













}

define i64 @test11(i64 %x) #0 {
entry:
  %and = and i64 %x, 4294967295
  %shl = shl i64 %x, 32
  %or = or i64 %and, %shl
  ret i64 %or




}

define i64 @test12(i64 %x) #0 {
entry:
  %and = and i64 %x, 4294905855
  %shl = shl i64 %x, 32
  %or = or i64 %and, %shl
  ret i64 %or




}

define i64 @test13(i64 %x) #0 {
entry:
  %shl = shl i64 %x, 4
  %and = and i64 %shl, 240
  %shr = lshr i64 %x, 28
  %and1 = and i64 %shr, 15
  %or = or i64 %and, %and1
  ret i64 %or




}

define i64 @test14(i64 %x) #0 {
entry:
  %shl = shl i64 %x, 4
  %and = and i64 %shl, 240
  %shr = lshr i64 %x, 28
  %and1 = and i64 %shr, 15
  %and2 = and i64 %x, -4294967296
  %or = or i64 %and1, %and2
  %or3 = or i64 %or, %and
  ret i64 %or3






}

define i64 @test15(i64 %x) #0 {
entry:
  %shl = shl i64 %x, 4
  %and = and i64 %shl, 240
  %shr = lshr i64 %x, 28
  %and1 = and i64 %shr, 15
  %and2 = and i64 %x, -256
  %or = or i64 %and1, %and2
  %or3 = or i64 %or, %and
  ret i64 %or3




}


declare i32 @llvm.bswap.i32(i32) #0
declare i64 @llvm.bswap.i64(i64) #0

attributes #0 = { nounwind readnone }

