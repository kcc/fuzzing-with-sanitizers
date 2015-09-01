


define <2 x float> @vtrunc(<2 x double> %a) {


  %vt = fptrunc <2 x double> %a to <2 x float>
  ret <2 x float> %vt
}

define <2 x double> @vextend(<2 x float> %a) {


  %ve = fpext <2 x float> %a to <2 x double>
  ret <2 x double> %ve
}



define void @vsitofp_double(<2 x i32>* %loadaddr,
                            <2 x double>* %storeaddr) {
  %v0 = load <2 x i32>, <2 x i32>* %loadaddr




  %r = sitofp <2 x i32> %v0 to <2 x double>
  store <2 x double> %r, <2 x double>* %storeaddr
  ret void
}

define void @vuitofp_double(<2 x i32>* %loadaddr,
                            <2 x double>* %storeaddr) {
  %v0 = load <2 x i32>, <2 x i32>* %loadaddr




  %r = uitofp <2 x i32> %v0 to <2 x double>
  store <2 x double> %r, <2 x double>* %storeaddr
  ret void
}
