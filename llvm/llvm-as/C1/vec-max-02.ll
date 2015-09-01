




define <8 x i16> @f1(<8 x i16> %val1, <8 x i16> %val2) {



  %cmp = icmp slt <8 x i16> %val1, %val2
  %ret = select <8 x i1> %cmp, <8 x i16> %val2, <8 x i16> %val1
  ret <8 x i16> %ret
}


define <8 x i16> @f2(<8 x i16> %val1, <8 x i16> %val2) {



  %cmp = icmp sle <8 x i16> %val1, %val2
  %ret = select <8 x i1> %cmp, <8 x i16> %val2, <8 x i16> %val1
  ret <8 x i16> %ret
}


define <8 x i16> @f3(<8 x i16> %val1, <8 x i16> %val2) {



  %cmp = icmp sgt <8 x i16> %val1, %val2
  %ret = select <8 x i1> %cmp, <8 x i16> %val1, <8 x i16> %val2
  ret <8 x i16> %ret
}


define <8 x i16> @f4(<8 x i16> %val1, <8 x i16> %val2) {



  %cmp = icmp sge <8 x i16> %val1, %val2
  %ret = select <8 x i1> %cmp, <8 x i16> %val1, <8 x i16> %val2
  ret <8 x i16> %ret
}


define <8 x i16> @f5(<8 x i16> %val1, <8 x i16> %val2) {



  %cmp = icmp ult <8 x i16> %val1, %val2
  %ret = select <8 x i1> %cmp, <8 x i16> %val2, <8 x i16> %val1
  ret <8 x i16> %ret
}


define <8 x i16> @f6(<8 x i16> %val1, <8 x i16> %val2) {



  %cmp = icmp ule <8 x i16> %val1, %val2
  %ret = select <8 x i1> %cmp, <8 x i16> %val2, <8 x i16> %val1
  ret <8 x i16> %ret
}


define <8 x i16> @f7(<8 x i16> %val1, <8 x i16> %val2) {



  %cmp = icmp ugt <8 x i16> %val1, %val2
  %ret = select <8 x i1> %cmp, <8 x i16> %val1, <8 x i16> %val2
  ret <8 x i16> %ret
}


define <8 x i16> @f8(<8 x i16> %val1, <8 x i16> %val2) {



  %cmp = icmp uge <8 x i16> %val1, %val2
  %ret = select <8 x i1> %cmp, <8 x i16> %val1, <8 x i16> %val2
  ret <8 x i16> %ret
}
