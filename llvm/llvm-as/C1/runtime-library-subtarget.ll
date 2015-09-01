





target datalayout = "e-m:o-p:32:32-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "thumbv7-apple-ios"



define float @__addsf3vfp(float %a, float %b) #0 {
entry:
  %add = fadd float %a, %b
  ret float %add
}

attributes #0 = { "target-cpu"="arm1176jzf-s"}
