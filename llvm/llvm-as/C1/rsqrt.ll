

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"

declare float @llvm.nvvm.sqrt.f(float)

define float @foo(float %a) {

  %val = tail call float @llvm.nvvm.sqrt.f(float %a)
  %ret = fdiv float 1.0, %val
  ret float %ret
}
  
