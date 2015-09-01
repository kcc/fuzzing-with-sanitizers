


define <2 x i32> @vcast(<2 x float> %a, <2 x float> %b) {


  %af = bitcast <2 x float> %a to <2 x i32>
  %bf = bitcast <2 x float> %b to <2 x i32>
  %x = sub <2 x i32> %af, %bf

  ret <2 x i32> %x

}

