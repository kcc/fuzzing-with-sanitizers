











define float @reciprocal_estimate(float %x) #0 {
  %div = fdiv fast float 1.0, %x
  ret float %div


























}

define <4 x float> @reciprocal_estimate_v4f32(<4 x float> %x) #0 {
  %div = fdiv fast <4 x float> <float 1.0, float 1.0, float 1.0, float 1.0>, %x
  ret <4 x float> %div


























}

define <8 x float> @reciprocal_estimate_v8f32(<8 x float> %x) #0 {
  %div = fdiv fast <8 x float> <float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0>, %x
  ret <8 x float> %div





























}

attributes #0 = { "unsafe-fp-math"="true" }
