













define void @autogen_SD2501752154() {
BB:
  %BC = bitcast <4 x i32> <i32 -1, i32 -1, i32 undef, i32 undef> to <4 x float>
  br label %CF74

CF74:                                             
  %E54 = extractelement <1 x i1> undef, i32 0
  br i1 %E54, label %CF74, label %CF79

CF79:                                             
  %I63 = insertelement <4 x float> %BC, float undef, i32 0
  ret void
}
