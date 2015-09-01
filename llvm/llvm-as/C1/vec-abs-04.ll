




define <2 x i64> @f1(<2 x i64> %val) {



  %cmp = icmp slt <2 x i64> %val, zeroinitializer
  %neg = sub <2 x i64> zeroinitializer, %val
  %ret = select <2 x i1> %cmp, <2 x i64> %neg, <2 x i64> %val
  ret <2 x i64> %ret
}


define <2 x i64> @f2(<2 x i64> %val) {



  %cmp = icmp sle <2 x i64> %val, zeroinitializer
  %neg = sub <2 x i64> zeroinitializer, %val
  %ret = select <2 x i1> %cmp, <2 x i64> %neg, <2 x i64> %val
  ret <2 x i64> %ret
}


define <2 x i64> @f3(<2 x i64> %val) {



  %cmp = icmp sgt <2 x i64> %val, zeroinitializer
  %neg = sub <2 x i64> zeroinitializer, %val
  %ret = select <2 x i1> %cmp, <2 x i64> %val, <2 x i64> %neg
  ret <2 x i64> %ret
}


define <2 x i64> @f4(<2 x i64> %val) {



  %cmp = icmp sge <2 x i64> %val, zeroinitializer
  %neg = sub <2 x i64> zeroinitializer, %val
  %ret = select <2 x i1> %cmp, <2 x i64> %val, <2 x i64> %neg
  ret <2 x i64> %ret
}



define <2 x i64> @f5(<2 x i64> %val) {




  %cmp = icmp slt <2 x i64> %val, zeroinitializer
  %neg = sub <2 x i64> zeroinitializer, %val
  %abs = select <2 x i1> %cmp, <2 x i64> %neg, <2 x i64> %val
  %ret = sub <2 x i64> zeroinitializer, %abs
  ret <2 x i64> %ret
}


define <2 x i64> @f6(<2 x i64> %val) {




  %cmp = icmp slt <2 x i64> %val, zeroinitializer
  %neg = sub <2 x i64> zeroinitializer, %val
  %ret = select <2 x i1> %cmp, <2 x i64> %val, <2 x i64> %neg
  ret <2 x i64> %ret
}


define <2 x i64> @f7(<2 x i64> %val) {




  %cmp = icmp sle <2 x i64> %val, zeroinitializer
  %neg = sub <2 x i64> zeroinitializer, %val
  %ret = select <2 x i1> %cmp, <2 x i64> %val, <2 x i64> %neg
  ret <2 x i64> %ret
}


define <2 x i64> @f8(<2 x i64> %val) {




  %cmp = icmp sgt <2 x i64> %val, zeroinitializer
  %neg = sub <2 x i64> zeroinitializer, %val
  %ret = select <2 x i1> %cmp, <2 x i64> %neg, <2 x i64> %val
  ret <2 x i64> %ret
}


define <2 x i64> @f9(<2 x i64> %val) {




  %cmp = icmp sge <2 x i64> %val, zeroinitializer
  %neg = sub <2 x i64> zeroinitializer, %val
  %ret = select <2 x i1> %cmp, <2 x i64> %neg, <2 x i64> %val
  ret <2 x i64> %ret
}


define <2 x i64> @f10(<2 x i64> %val) {



  %shr = ashr <2 x i64> %val, <i64 63, i64 63>
  %neg = sub <2 x i64> zeroinitializer, %val
  %and1 = and <2 x i64> %shr, %neg
  %not = xor <2 x i64> %shr, <i64 -1, i64 -1>
  %and2 = and <2 x i64> %not, %val
  %ret = or <2 x i64> %and1, %and2
  ret <2 x i64> %ret
}


define <2 x i64> @f11(<2 x i64> %val) {




  %shr = ashr <2 x i64> %val, <i64 63, i64 63>
  %and1 = and <2 x i64> %shr, %val
  %not = xor <2 x i64> %shr, <i64 -1, i64 -1>
  %neg = sub <2 x i64> zeroinitializer, %val
  %and2 = and <2 x i64> %not, %neg
  %ret = or <2 x i64> %and1, %and2
  ret <2 x i64> %ret
}
