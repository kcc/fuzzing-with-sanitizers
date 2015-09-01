




define <2 x i64> @f1(<2 x i64> %dummy, <2 x double> %val1, <2 x double> %val2) {



  %cmp = fcmp oeq <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f2(<2 x i64> %dummy, <2 x double> %val1, <2 x double> %val2) {





  %cmp = fcmp one <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f3(<2 x i64> %dummy, <2 x double> %val1, <2 x double> %val2) {



  %cmp = fcmp ogt <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f4(<2 x i64> %dummy, <2 x double> %val1, <2 x double> %val2) {



  %cmp = fcmp oge <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f5(<2 x i64> %dummy, <2 x double> %val1, <2 x double> %val2) {



  %cmp = fcmp ole <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f6(<2 x i64> %dummy, <2 x double> %val1, <2 x double> %val2) {



  %cmp = fcmp olt <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f7(<2 x i64> %dummy, <2 x double> %val1, <2 x double> %val2) {





  %cmp = fcmp ueq <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f8(<2 x i64> %dummy, <2 x double> %val1, <2 x double> %val2) {




  %cmp = fcmp une <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f9(<2 x i64> %dummy, <2 x double> %val1, <2 x double> %val2) {




  %cmp = fcmp ugt <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f10(<2 x i64> %dummy, <2 x double> %val1,
                      <2 x double> %val2) {




  %cmp = fcmp uge <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f11(<2 x i64> %dummy, <2 x double> %val1,
                      <2 x double> %val2) {




  %cmp = fcmp ule <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f12(<2 x i64> %dummy, <2 x double> %val1,
                      <2 x double> %val2) {




  %cmp = fcmp ult <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f13(<2 x i64> %dummy, <2 x double> %val1,
                      <2 x double> %val2) {





  %cmp = fcmp ord <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f14(<2 x i64> %dummy, <2 x double> %val1,
                      <2 x double> %val2) {





  %cmp = fcmp uno <2 x double> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x double> @f15(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp oeq <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f16(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {






  %cmp = fcmp one <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f17(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp ogt <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f18(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp oge <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f19(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp ole <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f20(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp olt <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f21(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {






  %cmp = fcmp ueq <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f22(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp une <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f23(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp ugt <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f24(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp uge <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f25(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp ule <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f26(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {




  %cmp = fcmp ult <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f27(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {






  %cmp = fcmp ord <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define <2 x double> @f28(<2 x double> %val1, <2 x double> %val2,
                         <2 x double> %val3, <2 x double> %val4) {






  %cmp = fcmp uno <2 x double> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x double> %val3, <2 x double> %val4
  ret <2 x double> %ret
}


define i64 @f29(i64 %a, i64 %b, double %f1, <2 x double> %vec) {




  %f2 = extractelement <2 x double> %vec, i32 0
  %cond = fcmp oeq double %f1, %f2
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}
