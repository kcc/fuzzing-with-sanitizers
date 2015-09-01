





define void @f1(<4 x i32> %v1, <4 x i32> %v2, i8 *%ptr1, i8 *%ptr2) {





  %add = add <4 x i32> %v1, %v2
  %elem1 = extractelement <4 x i32> %add, i32 0
  %elem2 = extractelement <4 x i32> %add, i32 3
  %trunc1 = trunc i32 %elem1 to i8
  %trunc2 = trunc i32 %elem2 to i8
  store i8 %trunc1, i8 *%ptr1
  store i8 %trunc2, i8 *%ptr2
  ret void
}


define i16 @f2(<4 x i32> %v1, <4 x i32> %v2, <4 x i32> %v3) {







  %add1 = add <4 x i32> %v1, %v2
  %add2 = add <4 x i32> %v2, %v3
  %shuffle = shufflevector <4 x i32> %add1, <4 x i32> %add2,
                           <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %bitcast = bitcast <4 x i32> %shuffle to <8 x i16>
  %elem1 = extractelement <8 x i16> %bitcast, i32 1
  %elem2 = extractelement <8 x i16> %bitcast, i32 7
  %res = add i16 %elem1, %elem2
  ret i16 %res
}


define i16 @f3(<4 x i32> %v1, <4 x i32> %v2, <2 x i64> %v3) {







  %add = add <4 x i32> %v1, %v2
  %splat = shufflevector <2 x i64> %v3, <2 x i64> undef,
                         <2 x i32> <i32 0, i32 0>
  %splatcast = bitcast <2 x i64> %splat to <4 x i32>
  %shuffle = shufflevector <4 x i32> %add, <4 x i32> %splatcast,
                           <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %bitcast = bitcast <4 x i32> %shuffle to <8 x i16>
  %elem1 = extractelement <8 x i16> %bitcast, i32 2
  %elem2 = extractelement <8 x i16> %bitcast, i32 7
  %res = add i16 %elem1, %elem2
  ret i16 %res
}


define i16 @f4(<4 x i32> %v1, <4 x i32> %v2, <2 x i64> %v3) {







  %add = add <4 x i32> %v1, %v2
  %splat = shufflevector <2 x i64> %v3, <2 x i64> undef,
                         <2 x i32> <i32 0, i32 0>
  %splatcast = bitcast <2 x i64> %splat to <4 x i32>
  %shuffle = shufflevector <4 x i32> %add, <4 x i32> %splatcast,
                           <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %bitcast = bitcast <4 x i32> %shuffle to <8 x i16>
  %elem1 = extractelement <8 x i16> %bitcast, i32 4
  %elem2 = extractelement <8 x i16> %bitcast, i32 7
  %res = add i16 %elem1, %elem2
  ret i16 %res
}


define i16 @f5(<4 x i32> %v1, <4 x i32> %v2, <2 x i64> %v3) {







  %add = add <4 x i32> %v1, %v2
  %splat = shufflevector <2 x i64> %v3, <2 x i64> undef,
                         <2 x i32> <i32 0, i32 0>
  %splatcast = bitcast <2 x i64> %splat to <4 x i32>
  %shuffle = shufflevector <4 x i32> %add, <4 x i32> %splatcast,
                           <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %bitcast = bitcast <4 x i32> %shuffle to <8 x i16>
  %elem1 = extractelement <8 x i16> %bitcast, i32 4
  %elem2 = extractelement <8 x i16> %bitcast, i32 7
  %res = add i16 %elem1, %elem2
  ret i16 %res
}



define void @f6(<8 x i8> *%ptr1, i8 *%ptr2, i8 *%ptr3, i8 *%ptr4) {







  %vec = load <8 x i8>, <8 x i8> *%ptr1
  %ext = sext <8 x i8> %vec to <8 x i16>
  %elem1 = extractelement <8 x i16> %ext, i32 1
  %elem2 = extractelement <8 x i16> %ext, i32 2
  %elem3 = extractelement <8 x i16> %ext, i32 7
  %trunc1 = trunc i16 %elem1 to i8
  %trunc2 = trunc i16 %elem2 to i8
  %trunc3 = trunc i16 %elem3 to i8
  store i8 %trunc1, i8 *%ptr2
  store i8 %trunc2, i8 *%ptr3
  store i8 %trunc3, i8 *%ptr4
  ret void
}


define void @f7(<4 x i8> *%ptr1, i8 *%ptr2, i8 *%ptr3, i8 *%ptr4) {







  %vec = load <4 x i8>, <4 x i8> *%ptr1
  %ext = sext <4 x i8> %vec to <4 x i32>
  %bitcast = bitcast <4 x i32> %ext to <8 x i16>
  %elem1 = extractelement <8 x i16> %bitcast, i32 1
  %elem2 = extractelement <8 x i16> %bitcast, i32 3
  %elem3 = extractelement <8 x i16> %bitcast, i32 7
  %trunc1 = trunc i16 %elem1 to i8
  %trunc2 = trunc i16 %elem2 to i8
  %trunc3 = trunc i16 %elem3 to i8
  store i8 %trunc1, i8 *%ptr2
  store i8 %trunc2, i8 *%ptr3
  store i8 %trunc3, i8 *%ptr4
  ret void
}
