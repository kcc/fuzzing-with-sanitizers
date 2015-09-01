




define <16 x i8> @f1(<16 x i8> %dummy, <16 x i8> %val1, <16 x i8> %val2) {



  %ret = lshr <16 x i8> %val1, %val2
  ret <16 x i8> %ret
}


define <8 x i16> @f2(<8 x i16> %dummy, <8 x i16> %val1, <8 x i16> %val2) {



  %ret = lshr <8 x i16> %val1, %val2
  ret <8 x i16> %ret
}


define <4 x i32> @f3(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %ret = lshr <4 x i32> %val1, %val2
  ret <4 x i32> %ret
}


define <2 x i64> @f4(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %ret = lshr <2 x i64> %val1, %val2
  ret <2 x i64> %ret
}
