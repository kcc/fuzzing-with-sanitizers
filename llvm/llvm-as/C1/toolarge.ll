








define i80 @neg_toolarge(i80 %a) {
  %1 = uitofp i80 %a to fp128
  %2 = fadd fp128 %1, %1
  %3 = fptoui fp128 %2 to i80
  ret i80 %3
}

