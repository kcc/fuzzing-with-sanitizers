





declare zeroext i1 @foo(<1 x double>)

define <1 x double> @pr23103(<1 x double>* align 8 %Vp) {






entry:
  %V = load <1 x double>, <1 x double>* %Vp, align 8
  %call = call zeroext i1 @foo(<1 x double> %V)
  %fadd = fadd <1 x double> %V, undef
  ret <1 x double> %fadd
}
