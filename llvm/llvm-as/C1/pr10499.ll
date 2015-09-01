



define void @autogen_24438_500() {
BB:
  %I = insertelement <8 x i32> undef, i32 -1, i32 4
  %BC = bitcast <8 x i32> %I to <8 x float>
  br label %CF

CF:                                               
  %ZE = fpext <8 x float> %BC to <8 x double>
  br label %CF
}
