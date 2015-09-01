




define <8 x i16> @f1(<4 x i32> %val0, <4 x i32> %val1) {



  %elem0 = extractelement <4 x i32> %val0, i32 0
  %elem1 = extractelement <4 x i32> %val0, i32 1
  %elem2 = extractelement <4 x i32> %val0, i32 2
  %elem3 = extractelement <4 x i32> %val0, i32 3
  %elem4 = extractelement <4 x i32> %val1, i32 0
  %elem5 = extractelement <4 x i32> %val1, i32 1
  %elem6 = extractelement <4 x i32> %val1, i32 2
  %elem7 = extractelement <4 x i32> %val1, i32 3
  %hboth0 = bitcast i32 %elem0 to <2 x i16>
  %hboth1 = bitcast i32 %elem1 to <2 x i16>
  %hboth2 = bitcast i32 %elem2 to <2 x i16>
  %hboth3 = bitcast i32 %elem3 to <2 x i16>
  %hboth4 = bitcast i32 %elem4 to <2 x i16>
  %hboth5 = bitcast i32 %elem5 to <2 x i16>
  %hboth6 = bitcast i32 %elem6 to <2 x i16>
  %hboth7 = bitcast i32 %elem7 to <2 x i16>
  %hlow0 = shufflevector <2 x i16> %hboth0, <2 x i16> %hboth1,
                         <2 x i32> <i32 1, i32 3>
  %hlow1 = shufflevector <2 x i16> %hboth2, <2 x i16> %hboth3,
                         <2 x i32> <i32 1, i32 3>
  %hlow2 = shufflevector <2 x i16> %hboth4, <2 x i16> %hboth5,
                         <2 x i32> <i32 1, i32 3>
  %hlow3 = shufflevector <2 x i16> %hboth6, <2 x i16> %hboth7,
                         <2 x i32> <i32 1, i32 3>
  %join0 = shufflevector <2 x i16> %hlow0, <2 x i16> %hlow1,
                         <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %join1 = shufflevector <2 x i16> %hlow2, <2 x i16> %hlow3,
                         <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %ret = shufflevector <4 x i16> %join0, <4 x i16> %join1,
                       <8 x i32> <i32 0, i32 1, i32 2, i32 3,
                                  i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %ret
}


define <8 x i16> @f2(<4 x i32> %val0, <4 x i32> %val1) {



  %elem0 = extractelement <4 x i32> %val0, i32 0
  %elem1 = extractelement <4 x i32> %val0, i32 1
  %elem2 = extractelement <4 x i32> %val0, i32 2
  %elem3 = extractelement <4 x i32> %val0, i32 3
  %elem4 = extractelement <4 x i32> %val1, i32 0
  %elem5 = extractelement <4 x i32> %val1, i32 1
  %elem6 = extractelement <4 x i32> %val1, i32 2
  %elem7 = extractelement <4 x i32> %val1, i32 3
  %wvec0 = insertelement <4 x i32> undef, i32 %elem0, i32 0
  %wvec1 = insertelement <4 x i32> undef, i32 %elem1, i32 0
  %wvec2 = insertelement <4 x i32> undef, i32 %elem2, i32 0
  %wvec3 = insertelement <4 x i32> undef, i32 %elem3, i32 0
  %wvec4 = insertelement <4 x i32> undef, i32 %elem4, i32 0
  %wvec5 = insertelement <4 x i32> undef, i32 %elem5, i32 0
  %wvec6 = insertelement <4 x i32> undef, i32 %elem6, i32 0
  %wvec7 = insertelement <4 x i32> undef, i32 %elem7, i32 0
  %hvec0 = bitcast <4 x i32> %wvec0 to <8 x i16>
  %hvec1 = bitcast <4 x i32> %wvec1 to <8 x i16>
  %hvec2 = bitcast <4 x i32> %wvec2 to <8 x i16>
  %hvec3 = bitcast <4 x i32> %wvec3 to <8 x i16>
  %hvec4 = bitcast <4 x i32> %wvec4 to <8 x i16>
  %hvec5 = bitcast <4 x i32> %wvec5 to <8 x i16>
  %hvec6 = bitcast <4 x i32> %wvec6 to <8 x i16>
  %hvec7 = bitcast <4 x i32> %wvec7 to <8 x i16>
  %hlow0 = shufflevector <8 x i16> %hvec0, <8 x i16> %hvec1,
                         <8 x i32> <i32 1, i32 9, i32 undef, i32 undef,
                                    i32 undef, i32 undef, i32 undef, i32 undef>
  %hlow1 = shufflevector <8 x i16> %hvec2, <8 x i16> %hvec3,
                         <8 x i32> <i32 1, i32 9, i32 undef, i32 undef,
                                    i32 undef, i32 undef, i32 undef, i32 undef>
  %hlow2 = shufflevector <8 x i16> %hvec4, <8 x i16> %hvec5,
                         <8 x i32> <i32 1, i32 9, i32 undef, i32 undef,
                                    i32 undef, i32 undef, i32 undef, i32 undef>
  %hlow3 = shufflevector <8 x i16> %hvec6, <8 x i16> %hvec7,
                         <8 x i32> <i32 1, i32 9, i32 undef, i32 undef,
                                    i32 undef, i32 undef, i32 undef, i32 undef>
  %join0 = shufflevector <8 x i16> %hlow0, <8 x i16> %hlow1,
                         <8 x i32> <i32 0, i32 1, i32 8, i32 9,
                                    i32 undef, i32 undef, i32 undef, i32 undef>
  %join1 = shufflevector <8 x i16> %hlow2, <8 x i16> %hlow3,
                         <8 x i32> <i32 0, i32 1, i32 8, i32 9,
                                    i32 undef, i32 undef, i32 undef, i32 undef>
  %ret = shufflevector <8 x i16> %join0, <8 x i16> %join1,
                       <8 x i32> <i32 0, i32 1, i32 2, i32 3,
                                  i32 8, i32 9, i32 10, i32 11>
  ret <8 x i16> %ret
}


define <8 x i16> @f3(<4 x i32> %val0, <4 x i32> %val1) {



  %bitcast0 = bitcast <4 x i32> %val0 to <8 x i16>
  %bitcast1 = bitcast <4 x i32> %val1 to <8 x i16>
  %ret = shufflevector <8 x i16> %bitcast0, <8 x i16> %bitcast1,
                       <8 x i32> <i32 1, i32 3, i32 5, i32 7,
                                  i32 9, i32 11, i32 13, i32 15>
  ret <8 x i16> %ret
}




define <16 x i8> @f4(<4 x i32> %val0, <4 x i32> %val1,
                     <4 x i32> %val2, <4 x i32> %val3) {





  %bitcast0 = bitcast <4 x i32> %val0 to <8 x i16>
  %bitcast1 = bitcast <4 x i32> %val1 to <8 x i16>
  %bitcast2 = bitcast <4 x i32> %val2 to <8 x i16>
  %bitcast3 = bitcast <4 x i32> %val3 to <8 x i16>
  %join0 = shufflevector <8 x i16> %bitcast0, <8 x i16> %bitcast1,
                         <8 x i32> <i32 1, i32 3, i32 5, i32 7,
                                    i32 9, i32 11, i32 13, i32 15>
  %join1 = shufflevector <8 x i16> %bitcast2, <8 x i16> %bitcast3,
                         <8 x i32> <i32 1, i32 3, i32 5, i32 7,
                                    i32 9, i32 11, i32 13, i32 15>
  %bitcast4 = bitcast <8 x i16> %join0 to <16 x i8>
  %bitcast5 = bitcast <8 x i16> %join1 to <16 x i8>
  %ret = shufflevector <16 x i8> %bitcast4, <16 x i8> %bitcast5,
                       <16 x i32> <i32 1, i32 3, i32 5, i32 7,
                                   i32 9, i32 11, i32 13, i32 15,
                                   i32 17, i32 19, i32 21, i32 23,
                                   i32 25, i32 27, i32 29, i32 31>
  ret <16 x i8> %ret
}


define void @f5(<4 x i32> %val0, <4 x i32> %val1,
                <4 x i32> %val2, <4 x i32> %val3,
                i8 *%base) {






  %bitcast0 = bitcast <4 x i32> %val0 to <8 x i16>
  %bitcast1 = bitcast <4 x i32> %val1 to <8 x i16>
  %bitcast2 = bitcast <4 x i32> %val2 to <8 x i16>
  %bitcast3 = bitcast <4 x i32> %val3 to <8 x i16>
  %join0 = shufflevector <8 x i16> %bitcast0, <8 x i16> %bitcast1,
                         <8 x i32> <i32 1, i32 3, i32 5, i32 7,
                                    i32 9, i32 11, i32 13, i32 15>
  %join1 = shufflevector <8 x i16> %bitcast2, <8 x i16> %bitcast3,
                         <8 x i32> <i32 1, i32 3, i32 5, i32 7,
                                    i32 9, i32 11, i32 13, i32 15>
  %bitcast4 = bitcast <8 x i16> %join0 to <16 x i8>
  %bitcast5 = bitcast <8 x i16> %join1 to <16 x i8>
  %vec = shufflevector <16 x i8> %bitcast4, <16 x i8> %bitcast5,
                       <16 x i32> <i32 1, i32 3, i32 5, i32 7,
                                   i32 9, i32 11, i32 13, i32 15,
                                   i32 17, i32 19, i32 21, i32 23,
                                   i32 25, i32 27, i32 29, i32 31>

  %ptr0 = getelementptr i8, i8 *%base, i64 0
  %ptr1 = getelementptr i8, i8 *%base, i64 1
  %ptr2 = getelementptr i8, i8 *%base, i64 2
  %ptr3 = getelementptr i8, i8 *%base, i64 3

  %byte0 = extractelement <16 x i8> %vec, i32 2
  %byte1 = extractelement <16 x i8> %vec, i32 7
  %byte2 = extractelement <16 x i8> %vec, i32 8
  %byte3 = extractelement <16 x i8> %vec, i32 13

  store i8 %byte0, i8 *%ptr0
  store i8 %byte1, i8 *%ptr1
  store i8 %byte2, i8 *%ptr2
  store i8 %byte3, i8 *%ptr3

  ret void
}


define <16 x i8> @f6(<4 x i32> %val0, <4 x i32> %val1,
                     <4 x i32> %val2, <4 x i32> %val3) {





  %elem0 = extractelement <4 x i32> %val0, i32 0
  %elem1 = extractelement <4 x i32> %val0, i32 1
  %elem2 = extractelement <4 x i32> %val0, i32 2
  %elem3 = extractelement <4 x i32> %val0, i32 3
  %elem4 = extractelement <4 x i32> %val1, i32 0
  %elem5 = extractelement <4 x i32> %val1, i32 1
  %elem6 = extractelement <4 x i32> %val1, i32 2
  %elem7 = extractelement <4 x i32> %val1, i32 3
  %elem8 = extractelement <4 x i32> %val2, i32 0
  %elem9 = extractelement <4 x i32> %val2, i32 1
  %elem10 = extractelement <4 x i32> %val2, i32 2
  %elem11 = extractelement <4 x i32> %val2, i32 3
  %elem12 = extractelement <4 x i32> %val3, i32 0
  %elem13 = extractelement <4 x i32> %val3, i32 1
  %elem14 = extractelement <4 x i32> %val3, i32 2
  %elem15 = extractelement <4 x i32> %val3, i32 3
  %bitcast0 = bitcast i32 %elem0 to <2 x i16>
  %bitcast1 = bitcast i32 %elem1 to <2 x i16>
  %bitcast2 = bitcast i32 %elem2 to <2 x i16>
  %bitcast3 = bitcast i32 %elem3 to <2 x i16>
  %bitcast4 = bitcast i32 %elem4 to <2 x i16>
  %bitcast5 = bitcast i32 %elem5 to <2 x i16>
  %bitcast6 = bitcast i32 %elem6 to <2 x i16>
  %bitcast7 = bitcast i32 %elem7 to <2 x i16>
  %bitcast8 = bitcast i32 %elem8 to <2 x i16>
  %bitcast9 = bitcast i32 %elem9 to <2 x i16>
  %bitcast10 = bitcast i32 %elem10 to <2 x i16>
  %bitcast11 = bitcast i32 %elem11 to <2 x i16>
  %bitcast12 = bitcast i32 %elem12 to <2 x i16>
  %bitcast13 = bitcast i32 %elem13 to <2 x i16>
  %bitcast14 = bitcast i32 %elem14 to <2 x i16>
  %bitcast15 = bitcast i32 %elem15 to <2 x i16>
  %low0 = shufflevector <2 x i16> %bitcast0, <2 x i16> %bitcast1,
                        <2 x i32> <i32 1, i32 3>
  %low1 = shufflevector <2 x i16> %bitcast2, <2 x i16> %bitcast3,
                        <2 x i32> <i32 1, i32 3>
  %low2 = shufflevector <2 x i16> %bitcast4, <2 x i16> %bitcast5,
                        <2 x i32> <i32 1, i32 3>
  %low3 = shufflevector <2 x i16> %bitcast6, <2 x i16> %bitcast7,
                        <2 x i32> <i32 1, i32 3>
  %low4 = shufflevector <2 x i16> %bitcast8, <2 x i16> %bitcast9,
                        <2 x i32> <i32 1, i32 3>
  %low5 = shufflevector <2 x i16> %bitcast10, <2 x i16> %bitcast11,
                        <2 x i32> <i32 1, i32 3>
  %low6 = shufflevector <2 x i16> %bitcast12, <2 x i16> %bitcast13,
                        <2 x i32> <i32 1, i32 3>
  %low7 = shufflevector <2 x i16> %bitcast14, <2 x i16> %bitcast15,
                        <2 x i32> <i32 1, i32 3>
  %bytes0 = bitcast <2 x i16> %low0 to <4 x i8>
  %bytes1 = bitcast <2 x i16> %low1 to <4 x i8>
  %bytes2 = bitcast <2 x i16> %low2 to <4 x i8>
  %bytes3 = bitcast <2 x i16> %low3 to <4 x i8>
  %bytes4 = bitcast <2 x i16> %low4 to <4 x i8>
  %bytes5 = bitcast <2 x i16> %low5 to <4 x i8>
  %bytes6 = bitcast <2 x i16> %low6 to <4 x i8>
  %bytes7 = bitcast <2 x i16> %low7 to <4 x i8>
  %blow0 = shufflevector <4 x i8> %bytes0, <4 x i8> %bytes1,
                         <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %blow1 = shufflevector <4 x i8> %bytes2, <4 x i8> %bytes3,
                         <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %blow2 = shufflevector <4 x i8> %bytes4, <4 x i8> %bytes5,
                         <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %blow3 = shufflevector <4 x i8> %bytes6, <4 x i8> %bytes7,
                         <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %join0 = shufflevector <4 x i8> %blow0, <4 x i8> %blow1,
                         <8 x i32> <i32 0, i32 1, i32 2, i32 3,
                                    i32 4, i32 5, i32 6, i32 7>
  %join1 = shufflevector <4 x i8> %blow2, <4 x i8> %blow3,
                         <8 x i32> <i32 0, i32 1, i32 2, i32 3,
                                    i32 4, i32 5, i32 6, i32 7>
  %ret = shufflevector <8 x i8> %join0, <8 x i8> %join1,
                       <16 x i32> <i32 0, i32 1, i32 2, i32 3,
                                   i32 4, i32 5, i32 6, i32 7,
                                   i32 8, i32 9, i32 10, i32 11,
                                   i32 12, i32 13, i32 14, i32 15>
  ret <16 x i8> %ret
}


define <16 x i8> @f7(<2 x i64> %val0, <2 x i64> %val1,
                     <2 x i64> %val2, <2 x i64> %val3,
                     <2 x i64> %val4, <2 x i64> %val5,
                     <2 x i64> %val6, <2 x i64> %val7) {









  %elem0 = extractelement <2 x i64> %val0, i32 0
  %elem1 = extractelement <2 x i64> %val0, i32 1
  %elem2 = extractelement <2 x i64> %val1, i32 0
  %elem3 = extractelement <2 x i64> %val1, i32 1
  %elem4 = extractelement <2 x i64> %val2, i32 0
  %elem5 = extractelement <2 x i64> %val2, i32 1
  %elem6 = extractelement <2 x i64> %val3, i32 0
  %elem7 = extractelement <2 x i64> %val3, i32 1
  %elem8 = extractelement <2 x i64> %val4, i32 0
  %elem9 = extractelement <2 x i64> %val4, i32 1
  %elem10 = extractelement <2 x i64> %val5, i32 0
  %elem11 = extractelement <2 x i64> %val5, i32 1
  %elem12 = extractelement <2 x i64> %val6, i32 0
  %elem13 = extractelement <2 x i64> %val6, i32 1
  %elem14 = extractelement <2 x i64> %val7, i32 0
  %elem15 = extractelement <2 x i64> %val7, i32 1
  %bitcast0 = bitcast i64 %elem0 to <2 x i32>
  %bitcast1 = bitcast i64 %elem1 to <2 x i32>
  %bitcast2 = bitcast i64 %elem2 to <2 x i32>
  %bitcast3 = bitcast i64 %elem3 to <2 x i32>
  %bitcast4 = bitcast i64 %elem4 to <2 x i32>
  %bitcast5 = bitcast i64 %elem5 to <2 x i32>
  %bitcast6 = bitcast i64 %elem6 to <2 x i32>
  %bitcast7 = bitcast i64 %elem7 to <2 x i32>
  %bitcast8 = bitcast i64 %elem8 to <2 x i32>
  %bitcast9 = bitcast i64 %elem9 to <2 x i32>
  %bitcast10 = bitcast i64 %elem10 to <2 x i32>
  %bitcast11 = bitcast i64 %elem11 to <2 x i32>
  %bitcast12 = bitcast i64 %elem12 to <2 x i32>
  %bitcast13 = bitcast i64 %elem13 to <2 x i32>
  %bitcast14 = bitcast i64 %elem14 to <2 x i32>
  %bitcast15 = bitcast i64 %elem15 to <2 x i32>
  %low0 = shufflevector <2 x i32> %bitcast0, <2 x i32> %bitcast1,
                        <2 x i32> <i32 1, i32 3>
  %low1 = shufflevector <2 x i32> %bitcast2, <2 x i32> %bitcast3,
                        <2 x i32> <i32 1, i32 3>
  %low2 = shufflevector <2 x i32> %bitcast4, <2 x i32> %bitcast5,
                        <2 x i32> <i32 1, i32 3>
  %low3 = shufflevector <2 x i32> %bitcast6, <2 x i32> %bitcast7,
                        <2 x i32> <i32 1, i32 3>
  %low4 = shufflevector <2 x i32> %bitcast8, <2 x i32> %bitcast9,
                        <2 x i32> <i32 1, i32 3>
  %low5 = shufflevector <2 x i32> %bitcast10, <2 x i32> %bitcast11,
                        <2 x i32> <i32 1, i32 3>
  %low6 = shufflevector <2 x i32> %bitcast12, <2 x i32> %bitcast13,
                        <2 x i32> <i32 1, i32 3>
  %low7 = shufflevector <2 x i32> %bitcast14, <2 x i32> %bitcast15,
                        <2 x i32> <i32 1, i32 3>
  %half0 = bitcast <2 x i32> %low0 to <4 x i16>
  %half1 = bitcast <2 x i32> %low1 to <4 x i16>
  %half2 = bitcast <2 x i32> %low2 to <4 x i16>
  %half3 = bitcast <2 x i32> %low3 to <4 x i16>
  %half4 = bitcast <2 x i32> %low4 to <4 x i16>
  %half5 = bitcast <2 x i32> %low5 to <4 x i16>
  %half6 = bitcast <2 x i32> %low6 to <4 x i16>
  %half7 = bitcast <2 x i32> %low7 to <4 x i16>
  %hlow0 = shufflevector <4 x i16> %half0, <4 x i16> %half1,
                         <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %hlow1 = shufflevector <4 x i16> %half2, <4 x i16> %half3,
                         <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %hlow2 = shufflevector <4 x i16> %half4, <4 x i16> %half5,
                         <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %hlow3 = shufflevector <4 x i16> %half6, <4 x i16> %half7,
                         <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %bytes0 = bitcast <4 x i16> %hlow0 to <8 x i8>
  %bytes1 = bitcast <4 x i16> %hlow1 to <8 x i8>
  %bytes2 = bitcast <4 x i16> %hlow2 to <8 x i8>
  %bytes3 = bitcast <4 x i16> %hlow3 to <8 x i8>
  %join0 = shufflevector <8 x i8> %bytes0, <8 x i8> %bytes1,
                         <8 x i32> <i32 1, i32 3, i32 5, i32 7,
                                    i32 9, i32 11, i32 13, i32 15>
  %join1 = shufflevector <8 x i8> %bytes2, <8 x i8> %bytes3,
                         <8 x i32> <i32 1, i32 3, i32 5, i32 7,
                                    i32 9, i32 11, i32 13, i32 15>
  %ret = shufflevector <8 x i8> %join0, <8 x i8> %join1,
                       <16 x i32> <i32 0, i32 1, i32 2, i32 3,
                                   i32 4, i32 5, i32 6, i32 7,
                                   i32 8, i32 9, i32 10, i32 11,
                                   i32 12, i32 13, i32 14, i32 15>
  ret <16 x i8> %ret
}



define float @f8(i64 %scalar0, i64 %scalar1, i64 %scalar2, i64 %scalar3) {








  %vec0 = insertelement <2 x i64> undef, i64 %scalar0, i32 0
  %vec1 = insertelement <2 x i64> undef, i64 %scalar1, i32 0
  %vec2 = insertelement <2 x i64> undef, i64 %scalar2, i32 0
  %vec3 = insertelement <2 x i64> undef, i64 %scalar3, i32 0
  %join0 = shufflevector <2 x i64> %vec0, <2 x i64> %vec1,
                         <2 x i32> <i32 0, i32 2>
  %join1 = shufflevector <2 x i64> %vec2, <2 x i64> %vec3,
                         <2 x i32> <i32 0, i32 2>
  %bitcast0 = bitcast <2 x i64> %join0 to <4 x float>
  %bitcast1 = bitcast <2 x i64> %join1 to <4 x float>
  %pack = shufflevector <4 x float> %bitcast0, <4 x float> %bitcast1,
                        <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %elt0 = extractelement <4 x float> %pack, i32 0
  %elt1 = extractelement <4 x float> %pack, i32 1
  %elt2 = extractelement <4 x float> %pack, i32 2
  %elt3 = extractelement <4 x float> %pack, i32 3
  %add0 = fadd float %elt0, %elt2
  %add1 = fadd float %elt1, %elt3
  %ret = fmul float %add0, %add1
  ret float %ret
}



define i32 @f9(double %scalar0, double %scalar1, double %scalar2,
               double %scalar3) {








  %vec0 = insertelement <2 x double> undef, double %scalar0, i32 0
  %vec1 = insertelement <2 x double> undef, double %scalar1, i32 0
  %vec2 = insertelement <2 x double> undef, double %scalar2, i32 0
  %vec3 = insertelement <2 x double> undef, double %scalar3, i32 0
  %join0 = shufflevector <2 x double> %vec0, <2 x double> %vec1,
                         <2 x i32> <i32 0, i32 2>
  %join1 = shufflevector <2 x double> %vec2, <2 x double> %vec3,
                         <2 x i32> <i32 0, i32 2>
  %bitcast0 = bitcast <2 x double> %join0 to <4 x i32>
  %bitcast1 = bitcast <2 x double> %join1 to <4 x i32>
  %pack = shufflevector <4 x i32> %bitcast0, <4 x i32> %bitcast1,
                        <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %elt0 = extractelement <4 x i32> %pack, i32 0
  %elt1 = extractelement <4 x i32> %pack, i32 1
  %elt2 = extractelement <4 x i32> %pack, i32 2
  %elt3 = extractelement <4 x i32> %pack, i32 3
  %add0 = add i32 %elt0, %elt2
  %add1 = add i32 %elt1, %elt3
  %ret = or i32 %add0, %add1
  ret i32 %ret
}
