





define <4 x float> @f1() {



  ret <4 x float> <float 0x3790000000000000, float 0x3790000000000000,
                   float 0x3790000000000000, float 0x3790000000000000>
}


define <4 x float> @f2() {



  ret <4 x float> <float 0x37affff000000000, float 0x37affff000000000,
                   float 0x37affff000000000, float 0x37affff000000000>
}


define <4 x float> @f3() {



  ret <4 x float> <float 0xffffc00000000000, float 0xffffc00000000000,
                   float 0xffffc00000000000, float 0xffffc00000000000>
}


define <4 x float> @f4() {



  ret <4 x float> <float 0x3ff0000000000000, float 0x3ff0000000000000,
                   float 0x3ff0000000000000, float 0x3ff0000000000000>
}


define <4 x float> @f5() {



  ret <4 x float> <float 0xc00fffffe0000000, float 0xc00fffffe0000000,
                   float 0xc00fffffe0000000, float 0xc00fffffe0000000>
}



define <4 x float> @f6() {



  ret <4 x float> <float 0.0, float 0x3790000000000000,
                   float 0.0, float 0x3790000000000000>
}


define <4 x float> @f7() {



  ret <4 x float> <float 0.0, float 0x37ffffff80000000,
                   float 0.0, float 0x37ffffff80000000>
}


define <4 x float> @f8() {



  ret <4 x float> <float 0xffffffffe0000000, float 0xffff000000000000,
                   float 0xffffffffe0000000, float 0xffff000000000000>
}


define <4 x float> @f9() {



  ret <4 x float> <float 0.0, float 0x3ff8000000000000,
                   float 0.0, float 0x3ff8000000000000>
}


define <4 x float> @f10() {



  ret <4 x float> <float 0x8000000000000000, float 0xffffffffe0000000,
                   float 0x8000000000000000, float 0xffffffffe0000000>
}
