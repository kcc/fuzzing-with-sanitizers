




define <2 x i64> @f1(<2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp slt <2 x i64> %val2, %val1
  %ret = select <2 x i1> %cmp, <2 x i64> %val2, <2 x i64> %val1
  ret <2 x i64> %ret
}


define <2 x i64> @f2(<2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp sle <2 x i64> %val2, %val1
  %ret = select <2 x i1> %cmp, <2 x i64> %val2, <2 x i64> %val1
  ret <2 x i64> %ret
}


define <2 x i64> @f3(<2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp sgt <2 x i64> %val2, %val1
  %ret = select <2 x i1> %cmp, <2 x i64> %val1, <2 x i64> %val2
  ret <2 x i64> %ret
}


define <2 x i64> @f4(<2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp sge <2 x i64> %val2, %val1
  %ret = select <2 x i1> %cmp, <2 x i64> %val1, <2 x i64> %val2
  ret <2 x i64> %ret
}


define <2 x i64> @f5(<2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp ult <2 x i64> %val2, %val1
  %ret = select <2 x i1> %cmp, <2 x i64> %val2, <2 x i64> %val1
  ret <2 x i64> %ret
}


define <2 x i64> @f6(<2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp ule <2 x i64> %val2, %val1
  %ret = select <2 x i1> %cmp, <2 x i64> %val2, <2 x i64> %val1
  ret <2 x i64> %ret
}


define <2 x i64> @f7(<2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp ugt <2 x i64> %val2, %val1
  %ret = select <2 x i1> %cmp, <2 x i64> %val1, <2 x i64> %val2
  ret <2 x i64> %ret
}


define <2 x i64> @f8(<2 x i64> %val1, <2 x i64> %val2) {



  %cmp = icmp uge <2 x i64> %val2, %val1
  %ret = select <2 x i1> %cmp, <2 x i64> %val1, <2 x i64> %val2
  ret <2 x i64> %ret
}
