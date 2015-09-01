



target datalayout = "e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"

declare i64 @llvm.ctlz.i64(i64, i1)
declare i64 @llvm.cttz.i64(i64, i1)
declare i64 @llvm.ctpop.i64(i64)







define i64 @add64(i64 %x, i64 %y) {
  %a = add i64 %x, %y
  ret i64 %a
}







define i64 @sub64(i64 %x, i64 %y) {
  %a = sub i64 %x, %y
  ret i64 %a
}







define i64 @mul64(i64 %x, i64 %y) {
  %a = mul i64 %x, %y
  ret i64 %a
}







define i64 @sdiv64(i64 %x, i64 %y) {
  %a = sdiv i64 %x, %y
  ret i64 %a
}







define i64 @udiv64(i64 %x, i64 %y) {
  %a = udiv i64 %x, %y
  ret i64 %a
}







define i64 @srem64(i64 %x, i64 %y) {
  %a = srem i64 %x, %y
  ret i64 %a
}







define i64 @urem64(i64 %x, i64 %y) {
  %a = urem i64 %x, %y
  ret i64 %a
}







define i64 @and64(i64 %x, i64 %y) {
  %a = and i64 %x, %y
  ret i64 %a
}







define i64 @ior64(i64 %x, i64 %y) {
  %a = or i64 %x, %y
  ret i64 %a
}







define i64 @xor64(i64 %x, i64 %y) {
  %a = xor i64 %x, %y
  ret i64 %a
}







define i64 @shl64(i64 %x, i64 %y) {
  %a = shl i64 %x, %y
  ret i64 %a
}







define i64 @shr64(i64 %x, i64 %y) {
  %a = lshr i64 %x, %y
  ret i64 %a
}







define i64 @sar64(i64 %x, i64 %y) {
  %a = ashr i64 %x, %y
  ret i64 %a
}






define i64 @clz64(i64 %x) {
  %a = call i64 @llvm.ctlz.i64(i64 %x, i1 false)
  ret i64 %a
}






define i64 @clz64_zero_undef(i64 %x) {
  %a = call i64 @llvm.ctlz.i64(i64 %x, i1 true)
  ret i64 %a
}






define i64 @ctz64(i64 %x) {
  %a = call i64 @llvm.cttz.i64(i64 %x, i1 false)
  ret i64 %a
}






define i64 @ctz64_zero_undef(i64 %x) {
  %a = call i64 @llvm.cttz.i64(i64 %x, i1 true)
  ret i64 %a
}






define i64 @popcnt64(i64 %x) {
  %a = call i64 @llvm.ctpop.i64(i64 %x)
  ret i64 %a
}
