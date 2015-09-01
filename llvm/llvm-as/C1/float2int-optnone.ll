



define i16 @simple1(i8 %a) #0 {





  %1 = uitofp i8 %a to float
  %2 = fadd float %1, 1.0
  %3 = fptoui float %2 to i16
  ret i16 %3
}

attributes #0 = { noinline optnone }
