




define void @vfcmp(<2 x double>* %a, <2 x double>* %b) {
  %wide.load = load <2 x double>, <2 x double>* %a, align 4
  %wide.load2 = load <2 x double>, <2 x double>* %b, align 4


  %v1 = fcmp olt <2 x double> %wide.load, %wide.load2
  %v2 = zext <2 x i1> %v1 to <2 x i32>
  %v3 = sitofp <2 x i32> %v2 to <2 x double>
  store <2 x double> %v3, <2 x double>* %b, align 4
  ret void
}
