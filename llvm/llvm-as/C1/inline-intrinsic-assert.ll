





define float @foo(float %f1) #0 {
  %call = call float @bar(float %f1)
  ret float %call




}

define float @bar(float %f1) #0 {
  %call = call float @sqr(float %f1)
  %call1 = call float @sqrtf(float %call) #0
  ret float %call1
}

define float @sqr(float %f) #0 {
  %mul = fmul fast float %f, %f
  ret float %mul
}

declare float @sqrtf(float) #0

attributes #0 = { "unsafe-fp-math"="true" }

