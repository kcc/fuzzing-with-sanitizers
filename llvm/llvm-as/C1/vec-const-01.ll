




define <16 x i8> @f1() {



  ret <16 x i8> zeroinitializer
}


define <16 x i8> @f2() {



  ret <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1,
                 i8 -1, i8 -1, i8 -1, i8 -1,
                 i8 -1, i8 -1, i8 -1, i8 -1,
                 i8 -1, i8 -1, i8 -1, i8 -1>
}


define <16 x i8> @f3() {



  ret <16 x i8> <i8 -1, i8 0, i8 0, i8 0,
                 i8 -1, i8 -1, i8 0, i8 0,
                 i8 0, i8 -1, i8 -1, i8 -1,
                 i8 0, i8 -1, i8 0, i8 -1>
}


define <16 x i8> @f4() {



  ret <16 x i8> <i8 -1, i8 undef, i8 undef, i8 undef,
                 i8 -1, i8 -1, i8 undef, i8 undef,
                 i8 undef, i8 -1, i8 -1, i8 -1,
                 i8 undef, i8 -1, i8 undef, i8 -1>
}


define <16 x i8> @f5() {



  ret <16 x i8> <i8 -1, i8 0, i8 0, i8 0,
                 i8 -1, i8 -1, i8 0, i8 1,
                 i8 0, i8 -1, i8 -1, i8 -1,
                 i8 0, i8 -1, i8 0, i8 -1>
}


define <2 x i8> @f6() {



  ret <2 x i8> zeroinitializer
}


define <2 x i8> @f7() {



  ret <2 x i8> <i8 255, i8 0>
}


define <4 x i8> @f8() {



  ret <4 x i8> zeroinitializer
}


define <4 x i8> @f9() {



  ret <4 x i8> <i8 255, i8 0, i8 0, i8 255>
}


define <8 x i8> @f10() {



  ret <8 x i8> zeroinitializer
}


define <8 x i8> @f11() {



  ret <8 x i8> <i8 255, i8 255, i8 255, i8 0, i8 0, i8 255, i8 0, i8 255>
}
