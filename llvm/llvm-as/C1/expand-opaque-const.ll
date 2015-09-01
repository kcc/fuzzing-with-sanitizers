
target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i686-apple-darwin"

define i64 @test_lshr() {
entry:


  %retval = alloca i64
  %op1 = alloca i64
  %op2 = alloca i64
  store i64 -6687208052682386272, i64* %op1
  store i64 7106745059734980448, i64* %op2
  %tmp1 = load i64, i64* %op1
  %tmp2 = load i64, i64* %op2
  %tmp = xor i64 %tmp2, 7106745059734980448
  %tmp3 = lshr i64 %tmp1, %tmp
  store i64 %tmp3, i64* %retval
  %tmp4 = load i64, i64* %retval
  ret i64 %tmp4
}
