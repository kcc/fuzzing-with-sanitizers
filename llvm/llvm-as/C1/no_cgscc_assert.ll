





define float @bar(float %f) #0 {
  %mul = fmul fast float %f, %f
  %call1 = call float @sqrtf(float %mul) #0
  ret float %call1




}

declare float @sqrtf(float) #0

attributes #0 = { readnone "unsafe-fp-math"="true" }
