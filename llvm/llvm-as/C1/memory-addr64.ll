



target datalayout = "e-p:64:64-i64:64-n32:64-S128"
target triple = "wasm64-unknown-unknown"

declare i64 @llvm.wasm.page.size.i64() nounwind readnone





define i64 @page_size() {
  %a = call i64 @llvm.wasm.page.size.i64()
  ret i64 %a
}
