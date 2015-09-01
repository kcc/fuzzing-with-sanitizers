





define <16 x i8> @f1() {



  ret <16 x i8> <i8 0, i8 0, i8 128, i8 0,
                 i8 0, i8 0, i8 128, i8 0,
                 i8 0, i8 0, i8 128, i8 0,
                 i8 0, i8 0, i8 128, i8 0>
}


define <16 x i8> @f2() {



  ret <16 x i8> <i8 0, i8 1, i8 255, i8 255,
                 i8 0, i8 1, i8 255, i8 255,
                 i8 0, i8 1, i8 255, i8 255,
                 i8 0, i8 1, i8 255, i8 255>
}


define <16 x i8> @f3() {



  ret <16 x i8> <i8 255, i8 254, i8 0, i8 0,
                 i8 255, i8 254, i8 0, i8 0,
                 i8 255, i8 254, i8 0, i8 0,
                 i8 255, i8 254, i8 0, i8 0>
}


define <16 x i8> @f4() {



  ret <16 x i8> <i8 0, i8 15, i8 192, i8 0,
                 i8 0, i8 15, i8 192, i8 0,
                 i8 0, i8 15, i8 192, i8 0,
                 i8 0, i8 15, i8 192, i8 0>
}


define <16 x i8> @f5() {



  ret <16 x i8> <i8 255, i8 255, i8 127, i8 255,
                 i8 255, i8 255, i8 127, i8 255,
                 i8 255, i8 255, i8 127, i8 255,
                 i8 255, i8 255, i8 127, i8 255>
}



define <16 x i8> @f6() {



  ret <16 x i8> <i8 0, i8 0, i8 0, i8 0,
                 i8 0, i8 0, i8 128, i8 0,
                 i8 0, i8 0, i8 0, i8 0,
                 i8 0, i8 0, i8 128, i8 0>
}


define <16 x i8> @f7() {



  ret <16 x i8> <i8 0, i8 0, i8 0, i8 0,
                 i8 0, i8 63, i8 255, i8 255,
                 i8 0, i8 0, i8 0, i8 0,
                 i8 0, i8 63, i8 255, i8 255>
}


define <16 x i8> @f8() {



  ret <16 x i8> <i8 255, i8 255, i8 255, i8 255,
                 i8 255, i8 248, i8 0, i8 0,
                 i8 255, i8 255, i8 255, i8 255,
                 i8 255, i8 248, i8 0, i8 0>
}


define <16 x i8> @f9() {



  ret <16 x i8> <i8 0, i8 0, i8 0, i8 1,
                 i8 255, i8 224, i8 0, i8 0,
                 i8 0, i8 0, i8 0, i8 1,
                 i8 255, i8 224, i8 0, i8 0>
}


define <16 x i8> @f10() {



  ret <16 x i8> <i8 128, i8 0, i8 63, i8 255,
                 i8 255, i8 255, i8 255, i8 255,
                 i8 128, i8 0, i8 63, i8 255,
                 i8 255, i8 255, i8 255, i8 255>
}


define <16 x i8> @f11() {



  ret <16 x i8> <i8 0, i8 undef, i8 128, i8 0,
                 i8 0, i8 0, i8 128, i8 undef,
                 i8 undef, i8 0, i8 128, i8 0,
                 i8 undef, i8 undef, i8 128, i8 0>
}


define <16 x i8> @f12() {



  ret <16 x i8> <i8 undef, i8 1, i8 255, i8 0,
                 i8 undef, i8 1, i8 255, i8 0,
                 i8 undef, i8 1, i8 255, i8 0,
                 i8 undef, i8 1, i8 255, i8 0>
}


define <16 x i8> @f13() {



  ret <16 x i8> <i8 0, i8 1, i8 254, i8 undef,
                 i8 0, i8 1, i8 254, i8 undef,
                 i8 0, i8 1, i8 254, i8 undef,
                 i8 0, i8 1, i8 254, i8 undef>
}


define <16 x i8> @f14() {



  ret <16 x i8> <i8 undef, i8 128, i8 0, i8 15,
                 i8 undef, i8 128, i8 0, i8 15,
                 i8 undef, i8 128, i8 0, i8 15,
                 i8 undef, i8 128, i8 0, i8 15>
}


define <16 x i8> @f15() {



  ret <16 x i8> <i8 240, i8 0, i8 63, i8 undef,
                 i8 240, i8 0, i8 63, i8 undef,
                 i8 240, i8 0, i8 63, i8 undef,
                 i8 240, i8 0, i8 63, i8 undef>
}


define <16 x i8> @f16() {



  ret <16 x i8> <i8 undef, i8 0, i8 undef, i8 1,
                 i8 255, i8 undef, i8 0, i8 0,
                 i8 0, i8 0, i8 0, i8 1,
                 i8 undef, i8 224, i8 undef, i8 undef>
}



define <16 x i8> @f17() {



  ret <16 x i8> <i8 0, i8 undef, i8 1, i8 undef,
                 i8 240, i8 undef, i8 0, i8 0,
                 i8 0, i8 undef, i8 1, i8 undef,
                 i8 240, i8 undef, i8 0, i8 0>
}
