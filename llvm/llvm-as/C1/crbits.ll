
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define zeroext i1 @test1(float %v1, float %v2) #0 {
entry:
  %cmp = fcmp oge float %v1, %v2
  %cmp2 = fcmp ole float %v2, 0.000000e+00
  %and5 = and i1 %cmp, %cmp2
  ret i1 %and5











}


define zeroext i1 @test2(float %v1, float %v2) #0 {
entry:
  %cmp = fcmp oge float %v1, %v2
  %cmp2 = fcmp ole float %v2, 0.000000e+00
  %xor5 = xor i1 %cmp, %cmp2
  ret i1 %xor5











}


define zeroext i1 @test3(float %v1, float %v2, i32 signext %x) #0 {
entry:
  %cmp = fcmp oge float %v1, %v2
  %cmp2 = fcmp ole float %v2, 0.000000e+00
  %cmp4 = icmp ne i32 %x, -2
  %and7 = and i1 %cmp2, %cmp4
  %xor8 = xor i1 %cmp, %and7
  ret i1 %xor8












}


define zeroext i1 @test4(i1 zeroext %v1, i1 zeroext %v2, i1 zeroext %v3) #0 {
entry:
  %and8 = and i1 %v1, %v2
  %or9 = or i1 %and8, %v3
  ret i1 %or9





}


define zeroext i1 @test5(i1 zeroext %v1, i1 zeroext %v2, i32 signext %v3) #0 {
entry:
  %and6 = and i1 %v1, %v2
  %cmp = icmp ne i32 %v3, -2
  %or7 = or i1 %and6, %cmp
  ret i1 %or7









}


define zeroext i1 @test6(i1 zeroext %v1, i1 zeroext %v2, i32 signext %v3) #0 {
entry:
  %cmp = icmp ne i32 %v3, -2
  %or6 = or i1 %cmp, %v2
  %and7 = and i1 %or6, %v1
  ret i1 %and7











}


define signext i32 @test7(i1 zeroext %v2, i32 signext %i1, i32 signext %i2) #0 {
entry:
  %cond = select i1 %v2, i32 %i1, i32 %i2
  ret i32 %cond





}

define signext i32 @exttest7(i32 signext %a) #0 {
entry:
  %cmp = icmp eq i32 %a, 5
  %cond = select i1 %cmp, i32 7, i32 8
  ret i32 %cond








}

define zeroext i32 @exttest8() #0 {
entry:
  %v0 = load i64, i64* undef, align 8
  %sub = sub i64 80, %v0
  %div = lshr i64 %sub, 1
  %conv13 = trunc i64 %div to i32
  %cmp14 = icmp ugt i32 %conv13, 80
  %.conv13 = select i1 %cmp14, i32 0, i32 %conv13
  ret i32 %.conv13



}


define float @test8(i1 zeroext %v2, float %v1, float %v3) #0 {
entry:
  %cond = select i1 %v2, float %v1, float %v3
  ret float %cond






}


define signext i32 @test10(i32 signext %v1, i32 signext %v2) #0 {
entry:
  %tobool = icmp ne i32 %v1, 0
  %lnot = icmp eq i32 %v2, 0
  %and3 = and i1 %tobool, %lnot
  %and = zext i1 %and3 to i32
  ret i32 %and








}

attributes #0 = { nounwind readnone }

