
target triple = "powerpc64-bgq-linux"

declare <4 x double> @foo(<4 x double> %p)

define <4 x double> @bar(<4 x double> %p, <4 x double> %q) {
entry:
  %v = call <4 x double> @foo(<4 x double> %p)
  %w = call <4 x double> @foo(<4 x double> %q)
  %x = fadd <4 x double> %v, %w
  ret <4 x double> %x









}

