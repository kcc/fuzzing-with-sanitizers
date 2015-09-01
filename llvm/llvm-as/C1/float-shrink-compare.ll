
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

define i32 @test1(float %x, float %y) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = call double @ceil(double %1) nounwind readnone
  %3 = fpext float %y to double
  %4 = fcmp oeq double %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test2(float %x, float %y) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = call double @fabs(double %1) nounwind readnone
  %3 = fpext float %y to double
  %4 = fcmp oeq double %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test3(float %x, float %y) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = call double @floor(double %1) nounwind readnone
  %3 = fpext float %y to double
  %4 = fcmp oeq double %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test4(float %x, float %y) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = call double @nearbyint(double %1) nounwind
  %3 = fpext float %y to double
  %4 = fcmp oeq double %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test5(float %x, float %y) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = call double @rint(double %1) nounwind
  %3 = fpext float %y to double
  %4 = fcmp oeq double %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test6(float %x, float %y) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = call double @round(double %1) nounwind readnone
  %3 = fpext float %y to double
  %4 = fcmp oeq double %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test7(float %x, float %y) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = call double @trunc(double %1) nounwind
  %3 = fpext float %y to double
  %4 = fcmp oeq double %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test8(float %x, float %y) nounwind uwtable {
  %1 = fpext float %y to double
  %2 = fpext float %x to double
  %3 = call double @ceil(double %2) nounwind readnone
  %4 = fcmp oeq double %1, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test9(float %x, float %y) nounwind uwtable {
  %1 = fpext float %y to double
  %2 = fpext float %x to double
  %3 = call double @fabs(double %2) nounwind readnone
  %4 = fcmp oeq double %1, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test10(float %x, float %y) nounwind uwtable {
  %1 = fpext float %y to double
  %2 = fpext float %x to double
  %3 = call double @floor(double %2) nounwind readnone
  %4 = fcmp oeq double %1, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test11(float %x, float %y) nounwind uwtable {
  %1 = fpext float %y to double
  %2 = fpext float %x to double
  %3 = call double @nearbyint(double %2) nounwind
  %4 = fcmp oeq double %1, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test12(float %x, float %y) nounwind uwtable {
  %1 = fpext float %y to double
  %2 = fpext float %x to double
  %3 = call double @rint(double %2) nounwind
  %4 = fcmp oeq double %1, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test13(float %x, float %y) nounwind uwtable {
  %1 = fpext float %y to double
  %2 = fpext float %x to double
  %3 = call double @round(double %2) nounwind readnone
  %4 = fcmp oeq double %1, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test14(float %x, float %y) nounwind uwtable {
  %1 = fpext float %y to double
  %2 = fpext float %x to double
  %3 = call double @trunc(double %2) nounwind
  %4 = fcmp oeq double %1, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test15(float %x, float %y, float %z) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = fpext float %y to double
  %3 = call double @fmin(double %1, double %2) nounwind
  %4 = fpext float %z to double
  %5 = fcmp oeq double %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6



}

define i32 @test16(float %x, float %y, float %z) nounwind uwtable {
  %1 = fpext float %z to double
  %2 = fpext float %x to double
  %3 = fpext float %y to double
  %4 = call double @fmin(double %2, double %3) nounwind
  %5 = fcmp oeq double %1, %4
  %6 = zext i1 %5 to i32
  ret i32 %6



}

define i32 @test17(float %x, float %y, float %z) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = fpext float %y to double
  %3 = call double @fmax(double %1, double %2) nounwind
  %4 = fpext float %z to double
  %5 = fcmp oeq double %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6



}

define i32 @test18(float %x, float %y, float %z) nounwind uwtable {
  %1 = fpext float %z to double
  %2 = fpext float %x to double
  %3 = fpext float %y to double
  %4 = call double @fmax(double %2, double %3) nounwind
  %5 = fcmp oeq double %1, %4
  %6 = zext i1 %5 to i32
  ret i32 %6



}

define i32 @test19(float %x, float %y, float %z) nounwind uwtable {
  %1 = fpext float %x to double
  %2 = fpext float %y to double
  %3 = call double @copysign(double %1, double %2) nounwind
  %4 = fpext float %z to double
  %5 = fcmp oeq double %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6



}

define i32 @test20(float %x, float %y) nounwind uwtable {
  %1 = fpext float %y to double
  %2 = fpext float %x to double
  %3 = call double @fmin(double 1.000000e+00, double %2) nounwind
  %4 = fcmp oeq double %1, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

define i32 @test21(float %x, float %y) nounwind uwtable {
  %1 = fpext float %y to double
  %2 = fpext float %x to double
  %3 = call double @fmin(double 1.300000e+00, double %2) nounwind
  %4 = fcmp oeq double %1, %3
  %5 = zext i1 %4 to i32
  ret i32 %5



}

declare double @fabs(double) nounwind readnone
declare double @ceil(double) nounwind readnone
declare double @copysign(double, double) nounwind readnone
declare double @floor(double) nounwind readnone
declare double @nearbyint(double) nounwind readnone
declare double @rint(double) nounwind readnone
declare double @round(double) nounwind readnone
declare double @trunc(double) nounwind readnone
declare double @fmin(double, double) nounwind readnone
declare double @fmax(double, double) nounwind readnone
