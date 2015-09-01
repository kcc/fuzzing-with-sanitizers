




define <2 x i64> @f1(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp eq <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f2(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {




  %cmp = icmp ne <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f3(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp sgt <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f4(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {




  %cmp = icmp sge <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f5(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {




  %cmp = icmp sle <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f6(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp slt <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f7(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp ugt <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f8(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {




  %cmp = icmp uge <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f9(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {




  %cmp = icmp ule <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f10(<2 x i64> %dummy, <2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp ult <2 x i64> %val1, %val2
  %ret = sext <2 x i1> %cmp to <2 x i64>
  ret <2 x i64> %ret
}


define <2 x i64> @f11(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp eq <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}


define <2 x i64> @f12(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp ne <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}


define <2 x i64> @f13(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp sgt <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}


define <2 x i64> @f14(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp sge <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}


define <2 x i64> @f15(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp sle <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}


define <2 x i64> @f16(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp slt <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}


define <2 x i64> @f17(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp ugt <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}


define <2 x i64> @f18(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp uge <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}


define <2 x i64> @f19(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp ule <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}


define <2 x i64> @f20(<2 x i64> %val1, <2 x i64> %val2,
                      <2 x i64> %val3, <2 x i64> %val4) {




  %cmp = icmp ult <2 x i64> %val1, %val2
  %ret = select <2 x i1> %cmp, <2 x i64> %val3, <2 x i64> %val4
  ret <2 x i64> %ret
}
