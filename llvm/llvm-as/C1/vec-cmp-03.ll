




define <4 x i32> @f1(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp eq <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f2(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {




  %cmp = icmp ne <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f3(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp sgt <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f4(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {




  %cmp = icmp sge <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f5(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {




  %cmp = icmp sle <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f6(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp slt <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f7(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp ugt <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f8(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {




  %cmp = icmp uge <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f9(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {




  %cmp = icmp ule <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f10(<4 x i32> %dummy, <4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp ult <4 x i32> %val1, %val2
  %ret = sext <4 x i1> %cmp to <4 x i32>
  ret <4 x i32> %ret
}


define <4 x i32> @f11(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp eq <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}


define <4 x i32> @f12(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp ne <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}


define <4 x i32> @f13(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp sgt <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}


define <4 x i32> @f14(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp sge <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}


define <4 x i32> @f15(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp sle <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}


define <4 x i32> @f16(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp slt <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}


define <4 x i32> @f17(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp ugt <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}


define <4 x i32> @f18(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp uge <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}


define <4 x i32> @f19(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp ule <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}


define <4 x i32> @f20(<4 x i32> %val1, <4 x i32> %val2,
                      <4 x i32> %val3, <4 x i32> %val4) {




  %cmp = icmp ult <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val3, <4 x i32> %val4
  ret <4 x i32> %ret
}
