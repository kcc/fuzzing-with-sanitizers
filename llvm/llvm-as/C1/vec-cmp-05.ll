




define <4 x i32> @f1(<4 x float> %val1, <4 x float> %val2) {













  %cmp = fcmp oeq <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f2(<4 x float> %val1, <4 x float> %val2) {

















  %cmp = fcmp one <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f3(<4 x float> %val1, <4 x float> %val2) {













  %cmp = fcmp ogt <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f4(<4 x float> %val1, <4 x float> %val2) {













  %cmp = fcmp oge <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f5(<4 x float> %val1, <4 x float> %val2) {













  %cmp = fcmp ole <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f6(<4 x float> %val1, <4 x float> %val2) {













  %cmp = fcmp olt <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f7(<4 x float> %val1, <4 x float> %val2) {

















  %cmp = fcmp ueq <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f8(<4 x float> %val1, <4 x float> %val2) {














  %cmp = fcmp une <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f9(<4 x float> %val1, <4 x float> %val2) {














  %cmp = fcmp ugt <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f10(<4 x float> %val1, <4 x float> %val2) {














  %cmp = fcmp uge <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f11(<4 x float> %val1, <4 x float> %val2) {














  %cmp = fcmp ule <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f12(<4 x float> %val1, <4 x float> %val2) {














  %cmp = fcmp ult <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f13(<4 x float> %val1, <4 x float> %val2) {

















  %cmp = fcmp ord <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f14(<4 x float> %val1, <4 x float> %val2) {

















  %cmp = fcmp uno <4 x float> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x float> @f15(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp oeq <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f16(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp one <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f17(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp ogt <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f18(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp oge <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f19(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp ole <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f20(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp olt <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f21(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp ueq <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f22(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp une <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f23(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp ugt <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f24(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp uge <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f25(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp ule <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f26(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp ult <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f27(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp ord <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}


define <4 x float> @f28(<4 x float> %val1, <4 x float> %val2,
                        <4 x float> %val3, <4 x float> %val4) {




  %cmp = fcmp uno <4 x float> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x float> %val3, <4 x float> %val4
  ret <4 x float> %ret
}
