



define void @foo1() #0 {
entry:
  tail call void asm sideeffect "mrs x0, cpm_ioacc_ctl_el3", ""()
  ret void
}

attributes #0 = { "target-cpu"="cyclone" }
