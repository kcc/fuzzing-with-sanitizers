




define <4 x float> @f1() {



  ret <4 x float> zeroinitializer
}


define <4 x float> @f2() {



  ret <4 x float> <float 0xffffffffe0000000, float 0xffffffffe0000000,
                   float 0xffffffffe0000000, float 0xffffffffe0000000>
}


define <4 x float> @f3() {



  ret <4 x float> <float 0xffffe00000000000, float 0x381fffffe0000000,
                   float 0x379fffe000000000, float 0x371fe00000000000>
}


define <4 x float> @f4() {



  ret <4 x float> <float 0xffffe00000000000, float undef,
                   float 0x379fffe000000000, float 0x371fe00000000000>
}


define <4 x float> @f5() {



  ret <4 x float> <float 0xffffe00000000000, float 0x381fffffc0000000,
                   float 0x379fffe000000000, float 0x371fe00000000000>
}


define <2 x float> @f6() {



  ret <2 x float> zeroinitializer
}


define <2 x float> @f7() {



  ret <2 x float> <float 0xffffe00000000000, float 0x381fffffe0000000>
}
