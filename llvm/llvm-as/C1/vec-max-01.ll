




define <16 x i8> @f1(<16 x i8> %val1, <16 x i8> %val2) {



  %cmp = icmp slt <16 x i8> %val1, %val2
  %ret = select <16 x i1> %cmp, <16 x i8> %val2, <16 x i8> %val1
  ret <16 x i8> %ret
}


define <16 x i8> @f2(<16 x i8> %val1, <16 x i8> %val2) {



  %cmp = icmp sle <16 x i8> %val1, %val2
  %ret = select <16 x i1> %cmp, <16 x i8> %val2, <16 x i8> %val1
  ret <16 x i8> %ret
}


define <16 x i8> @f3(<16 x i8> %val1, <16 x i8> %val2) {



  %cmp = icmp sgt <16 x i8> %val1, %val2
  %ret = select <16 x i1> %cmp, <16 x i8> %val1, <16 x i8> %val2
  ret <16 x i8> %ret
}


define <16 x i8> @f4(<16 x i8> %val1, <16 x i8> %val2) {



  %cmp = icmp sge <16 x i8> %val1, %val2
  %ret = select <16 x i1> %cmp, <16 x i8> %val1, <16 x i8> %val2
  ret <16 x i8> %ret
}


define <16 x i8> @f5(<16 x i8> %val1, <16 x i8> %val2) {



  %cmp = icmp ult <16 x i8> %val1, %val2
  %ret = select <16 x i1> %cmp, <16 x i8> %val2, <16 x i8> %val1
  ret <16 x i8> %ret
}


define <16 x i8> @f6(<16 x i8> %val1, <16 x i8> %val2) {



  %cmp = icmp ule <16 x i8> %val1, %val2
  %ret = select <16 x i1> %cmp, <16 x i8> %val2, <16 x i8> %val1
  ret <16 x i8> %ret
}


define <16 x i8> @f7(<16 x i8> %val1, <16 x i8> %val2) {



  %cmp = icmp ugt <16 x i8> %val1, %val2
  %ret = select <16 x i1> %cmp, <16 x i8> %val1, <16 x i8> %val2
  ret <16 x i8> %ret
}


define <16 x i8> @f8(<16 x i8> %val1, <16 x i8> %val2) {



  %cmp = icmp uge <16 x i8> %val1, %val2
  %ret = select <16 x i1> %cmp, <16 x i8> %val1, <16 x i8> %val2
  ret <16 x i8> %ret
}
