




target triple = "i686-apple-darwin8"

define <4 x double> @foo(<4 x double> %x, <4 x double> %z) {
  %y = fmul <4 x double> %x, %z
  ret <4 x double> %y
}

define <8 x float> @bar(<8 x float> %x, <8 x float> %z) {
  %y = fadd <8 x float> %x, %z
  ret <8 x float> %y
}
