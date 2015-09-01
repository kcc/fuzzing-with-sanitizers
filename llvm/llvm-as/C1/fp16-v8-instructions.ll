

define <8 x half> @add_h(<8 x half> %a, <8 x half> %b) {
entry:

































  %0 = fadd <8 x half> %a, %b
  ret <8 x half> %0
}


define <8 x half> @sub_h(<8 x half> %a, <8 x half> %b) {
entry:

































  %0 = fsub <8 x half> %a, %b
  ret <8 x half> %0
}


define <8 x half> @mul_h(<8 x half> %a, <8 x half> %b) {
entry:

































  %0 = fmul <8 x half> %a, %b
  ret <8 x half> %0
}


define <8 x half> @div_h(<8 x half> %a, <8 x half> %b) {
entry:

































  %0 = fdiv <8 x half> %a, %b
  ret <8 x half> %0
}


define <8 x half> @load_h(<8 x half>* %a) {
entry:


  %0 = load <8 x half>, <8 x half>* %a, align 4
  ret <8 x half> %0
}


define void @store_h(<8 x half>* %a, <8 x half> %b) {
entry:


  store <8 x half> %b, <8 x half>* %a, align 4
  ret void
}

define <8 x half> @s_to_h(<8 x float> %a) {




  %1 = fptrunc <8 x float> %a to <8 x half>
  ret <8 x half> %1
}

define <8 x half> @d_to_h(<8 x double> %a) {





















  %1 = fptrunc <8 x double> %a to <8 x half>
  ret <8 x half> %1
}

define <8 x float> @h_to_s(<8 x half> %a) {



  %1 = fpext <8 x half> %a to <8 x float>
  ret <8 x float> %1
}

define <8 x double> @h_to_d(<8 x half> %a) {













  %1 = fpext <8 x half> %a to <8 x double>
  ret <8 x double> %1
}


define <8 x half> @bitcast_i_to_h(float, <8 x i16> %a) {


  %2 = bitcast <8 x i16> %a to <8 x half>
  ret <8 x half> %2
}

define <8 x i16> @bitcast_h_to_i(float, <8 x half> %a) {


  %2 = bitcast <8 x half> %a to <8 x i16>
  ret <8 x i16> %2
}


define <8 x half> @sitofp_i8(<8 x i8> %a) #0 {









  %1 = sitofp <8 x i8> %a to <8 x half>
  ret <8 x half> %1
}


define <8 x half> @sitofp_i16(<8 x i16> %a) #0 {








  %1 = sitofp <8 x i16> %a to <8 x half>
  ret <8 x half> %1
}


define <8 x half> @sitofp_i32(<8 x i32> %a) #0 {






  %1 = sitofp <8 x i32> %a to <8 x half>
  ret <8 x half> %1
}


define <8 x half> @sitofp_i64(<8 x i64> %a) #0 {






  %1 = sitofp <8 x i64> %a to <8 x half>
  ret <8 x half> %1
}

define <8 x half> @uitofp_i8(<8 x i8> %a) #0 {









  %1 = uitofp <8 x i8> %a to <8 x half>
  ret <8 x half> %1
}


define <8 x half> @uitofp_i16(<8 x i16> %a) #0 {








  %1 = uitofp <8 x i16> %a to <8 x half>
  ret <8 x half> %1
}


define <8 x half> @uitofp_i32(<8 x i32> %a) #0 {






  %1 = uitofp <8 x i32> %a to <8 x half>
  ret <8 x half> %1
}


define <8 x half> @uitofp_i64(<8 x i64> %a) #0 {






  %1 = uitofp <8 x i64> %a to <8 x half>
  ret <8 x half> %1
}

attributes #0 = { nounwind }
