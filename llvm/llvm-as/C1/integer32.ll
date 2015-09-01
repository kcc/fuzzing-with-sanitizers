



target datalayout = "e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"

declare i32 @llvm.ctlz.i32(i32, i1)
declare i32 @llvm.cttz.i32(i32, i1)
declare i32 @llvm.ctpop.i32(i32)







define i32 @add32(i32 %x, i32 %y) {
  %a = add i32 %x, %y
  ret i32 %a
}







define i32 @sub32(i32 %x, i32 %y) {
  %a = sub i32 %x, %y
  ret i32 %a
}







define i32 @mul32(i32 %x, i32 %y) {
  %a = mul i32 %x, %y
  ret i32 %a
}







define i32 @sdiv32(i32 %x, i32 %y) {
  %a = sdiv i32 %x, %y
  ret i32 %a
}







define i32 @udiv32(i32 %x, i32 %y) {
  %a = udiv i32 %x, %y
  ret i32 %a
}







define i32 @srem32(i32 %x, i32 %y) {
  %a = srem i32 %x, %y
  ret i32 %a
}







define i32 @urem32(i32 %x, i32 %y) {
  %a = urem i32 %x, %y
  ret i32 %a
}







define i32 @and32(i32 %x, i32 %y) {
  %a = and i32 %x, %y
  ret i32 %a
}







define i32 @ior32(i32 %x, i32 %y) {
  %a = or i32 %x, %y
  ret i32 %a
}







define i32 @xor32(i32 %x, i32 %y) {
  %a = xor i32 %x, %y
  ret i32 %a
}







define i32 @shl32(i32 %x, i32 %y) {
  %a = shl i32 %x, %y
  ret i32 %a
}







define i32 @shr32(i32 %x, i32 %y) {
  %a = lshr i32 %x, %y
  ret i32 %a
}







define i32 @sar32(i32 %x, i32 %y) {
  %a = ashr i32 %x, %y
  ret i32 %a
}






define i32 @clz32(i32 %x) {
  %a = call i32 @llvm.ctlz.i32(i32 %x, i1 false)
  ret i32 %a
}






define i32 @clz32_zero_undef(i32 %x) {
  %a = call i32 @llvm.ctlz.i32(i32 %x, i1 true)
  ret i32 %a
}






define i32 @ctz32(i32 %x) {
  %a = call i32 @llvm.cttz.i32(i32 %x, i1 false)
  ret i32 %a
}






define i32 @ctz32_zero_undef(i32 %x) {
  %a = call i32 @llvm.cttz.i32(i32 %x, i1 true)
  ret i32 %a
}






define i32 @popcnt32(i32 %x) {
  %a = call i32 @llvm.ctpop.i32(i32 %x)
  ret i32 %a
}
