



define float @abc() nounwind {
entry:
  %a = alloca half, align 2
  %.compoundliteral = alloca float, align 4
  store half 0xH4C8D, half* %a, align 2
  %tmp = load half, half* %a, align 2
  %conv = fpext half %tmp to float

  ret float %conv
}
