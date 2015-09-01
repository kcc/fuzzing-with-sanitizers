




define <4 x i32> @f1(<4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp slt <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val2, <4 x i32> %val1
  ret <4 x i32> %ret
}


define <4 x i32> @f2(<4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp sle <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val2, <4 x i32> %val1
  ret <4 x i32> %ret
}


define <4 x i32> @f3(<4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp sgt <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val1, <4 x i32> %val2
  ret <4 x i32> %ret
}


define <4 x i32> @f4(<4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp sge <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val1, <4 x i32> %val2
  ret <4 x i32> %ret
}


define <4 x i32> @f5(<4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp ult <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val2, <4 x i32> %val1
  ret <4 x i32> %ret
}


define <4 x i32> @f6(<4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp ule <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val2, <4 x i32> %val1
  ret <4 x i32> %ret
}


define <4 x i32> @f7(<4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp ugt <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val1, <4 x i32> %val2
  ret <4 x i32> %ret
}


define <4 x i32> @f8(<4 x i32> %val1, <4 x i32> %val2) {



  %cmp = icmp uge <4 x i32> %val1, %val2
  %ret = select <4 x i1> %cmp, <4 x i32> %val1, <4 x i32> %val2
  ret <4 x i32> %ret
}
