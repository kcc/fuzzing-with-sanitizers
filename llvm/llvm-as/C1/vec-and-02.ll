




define <16 x i8> @f1(<16 x i8> %dummy, <16 x i8> %val1, <16 x i8> %val2) {



  %not = xor <16 x i8> %val2, <i8 -1, i8 -1, i8 -1, i8 -1,
                               i8 -1, i8 -1, i8 -1, i8 -1,
                               i8 -1, i8 -1, i8 -1, i8 -1,
                               i8 -1, i8 -1, i8 -1, i8 -1>
  %ret = and <16 x i8> %val1, %not
  ret <16 x i8> %ret
}


define <16 x i8> @f2(<16 x i8> %dummy, <16 x i8> %val1, <16 x i8> %val2) {



  %not = xor <16 x i8> %val1, <i8 -1, i8 -1, i8 -1, i8 -1,
                               i8 -1, i8 -1, i8 -1, i8 -1,
                               i8 -1, i8 -1, i8 -1, i8 -1,
                               i8 -1, i8 -1, i8 -1, i8 -1>
  %ret = and <16 x i8> %not, %val2
  ret <16 x i8> %ret
}


define <8 x i16> @f3(<8 x i16> %dummy, <8 x i16> %val1, <8 x i16> %val2) {



  %not = xor <8 x i16> %val2, <i16 -1, i16 -1, i16 -1, i16 -1,
                               i16 -1, i16 -1, i16 -1, i16 -1>
  %ret = and <8 x i16> %val1, %not
  ret <8 x i16> %ret
}


define <8 x i16> @f4(<8 x i16> %dummy, <8 x i16> %val1, <8 x i16> %val2) {



  %not = xor <8 x i16> %val1, <i16 -1, i16 -1, i16 -1, i16 -1,
                               i16 -1, i16 -1, i16 -1, i16 -1>
  %ret = and <8 x i16> %not, %val2
  ret <8 x i16> %ret
}


define <4 x i32> @f5(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %not = xor <4 x i32> %val2, <i32 -1, i32 -1, i32 -1, i32 -1>
  %ret = and <4 x i32> %val1, %not
  ret <4 x i32> %ret
}


define <4 x i32> @f6(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %not = xor <4 x i32> %val1, <i32 -1, i32 -1, i32 -1, i32 -1>
  %ret = and <4 x i32> %not, %val2
  ret <4 x i32> %ret
}


define <2 x i64> @f7(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %not = xor <2 x i64> %val2, <i64 -1, i64 -1>
  %ret = and <2 x i64> %val1, %not
  ret <2 x i64> %ret
}


define <2 x i64> @f8(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %not = xor <2 x i64> %val1, <i64 -1, i64 -1>
  %ret = and <2 x i64> %not, %val2
  ret <2 x i64> %ret
}
