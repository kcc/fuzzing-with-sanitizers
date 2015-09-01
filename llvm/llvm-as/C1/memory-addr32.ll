



target datalayout = "e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"

declare i32 @llvm.wasm.page.size.i32() nounwind readnone





define i32 @page_size() {
  %a = call i32 @llvm.wasm.page.size.i32()
  ret i32 %a
}
