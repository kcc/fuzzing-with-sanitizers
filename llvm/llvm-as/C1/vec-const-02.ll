




define <8 x i16> @f1() {



  ret <8 x i16> zeroinitializer
}


define <8 x i16> @f2() {



  ret <8 x i16> <i16 -1, i16 -1, i16 -1, i16 -1,
                 i16 -1, i16 -1, i16 -1, i16 -1>
}


define <8 x i16> @f3() {



  ret <8 x i16> <i16 65280, i16 0, i16 65535, i16 0,
                 i16 255, i16 65535, i16 255, i16 65280>
}


define <8 x i16> @f4() {



  ret <8 x i16> <i16 65280, i16 undef, i16 65535, i16 undef,
                 i16 255, i16 65535, i16 255, i16 65280>
}


define <8 x i16> @f5() {



  ret <8 x i16> <i16 65280, i16 0, i16 65535, i16 0,
                 i16 255, i16 65535, i16 256, i16 65280>
}


define <2 x i16> @f6() {



  ret <2 x i16> zeroinitializer
}


define <2 x i16> @f7() {



  ret <2 x i16> <i16 65535, i16 0>
}


define <4 x i16> @f8() {



  ret <4 x i16> zeroinitializer
}


define <4 x i16> @f9() {



  ret <4 x i16> <i16 255, i16 65535, i16 0, i16 65280>
}
