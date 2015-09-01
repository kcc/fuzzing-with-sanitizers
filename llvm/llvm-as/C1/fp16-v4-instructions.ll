

define <4 x half> @add_h(<4 x half> %a, <4 x half> %b) {
entry:





  %0 = fadd <4 x half> %a, %b
  ret <4 x half> %0
}


define <4 x half> @build_h4(<4 x half> %a) {
entry:



  ret <4 x half> <half 0xH3CCD, half 0xH3CCD, half 0xH3CCD, half 0xH3CCD>
}


define <4 x half> @sub_h(<4 x half> %a, <4 x half> %b) {
entry:





  %0 = fsub <4 x half> %a, %b
  ret <4 x half> %0
}


define <4 x half> @mul_h(<4 x half> %a, <4 x half> %b) {
entry:





  %0 = fmul <4 x half> %a, %b
  ret <4 x half> %0
}


define <4 x half> @div_h(<4 x half> %a, <4 x half> %b) {
entry:





  %0 = fdiv <4 x half> %a, %b
  ret <4 x half> %0
}


define <4 x half> @load_h(<4 x half>* %a) {
entry:


  %0 = load <4 x half>, <4 x half>* %a, align 4
  ret <4 x half> %0
}


define void @store_h(<4 x half>* %a, <4 x half> %b) {
entry:


  store <4 x half> %b, <4 x half>* %a, align 4
  ret void
}

define <4 x half> @s_to_h(<4 x float> %a) {


  %1 = fptrunc <4 x float> %a to <4 x half>
  ret <4 x half> %1
}

define <4 x half> @d_to_h(<4 x double> %a) {









  %1 = fptrunc <4 x double> %a to <4 x half>
  ret <4 x half> %1
}

define <4 x float> @h_to_s(<4 x half> %a) {


  %1 = fpext <4 x half> %a to <4 x float>
  ret <4 x float> %1
}

define <4 x double> @h_to_d(<4 x half> %a) {









  %1 = fpext <4 x half> %a to <4 x double>
  ret <4 x double> %1
}

define <4 x half> @bitcast_i_to_h(float, <4 x i16> %a) {


  %2 = bitcast <4 x i16> %a to <4 x half>
  ret <4 x half> %2
}

define <4 x i16> @bitcast_h_to_i(float, <4 x half> %a) {


  %2 = bitcast <4 x half> %a to <4 x i16>
  ret <4 x i16> %2
}


define <4 x half> @sitofp_i8(<4 x i8> %a) #0 {







  %1 = sitofp <4 x i8> %a to <4 x half>
  ret <4 x half> %1
}


define <4 x half> @sitofp_i16(<4 x i16> %a) #0 {





  %1 = sitofp <4 x i16> %a to <4 x half>
  ret <4 x half> %1
}


define <4 x half> @sitofp_i32(<4 x i32> %a) #0 {



  %1 = sitofp <4 x i32> %a to <4 x half>
  ret <4 x half> %1
}


define <4 x half> @sitofp_i64(<4 x i64> %a) #0 {






  %1 = sitofp <4 x i64> %a to <4 x half>
  ret <4 x half> %1
}

define <4 x half> @uitofp_i8(<4 x i8> %a) #0 {






  %1 = uitofp <4 x i8> %a to <4 x half>
  ret <4 x half> %1
}


define <4 x half> @uitofp_i16(<4 x i16> %a) #0 {





  %1 = uitofp <4 x i16> %a to <4 x half>
  ret <4 x half> %1
}


define <4 x half> @uitofp_i32(<4 x i32> %a) #0 {



  %1 = uitofp <4 x i32> %a to <4 x half>
  ret <4 x half> %1
}


define <4 x half> @uitofp_i64(<4 x i64> %a) #0 {






  %1 = uitofp <4 x i64> %a to <4 x half>
  ret <4 x half> %1
}

attributes #0 = { nounwind }
