








%T0_30 = type <4 x i1>
%T1_30 = type <4 x i32>
define void @func30(%T0_30 %v0, %T1_30* %p1) {
  %r = zext %T0_30 %v0 to %T1_30
  store %T1_30 %r, %T1_30* %p1
  ret void
}



define <1 x i32> @autogen_SD7918() {



  %I29 = insertelement <1 x i1> zeroinitializer, i1 false, i32 0
  %ZE = zext <1 x i1> %I29 to <1 x i32>
  ret <1 x i32> %ZE
}
