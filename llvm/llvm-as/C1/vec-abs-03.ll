




define <4 x i32> @f1(<4 x i32> %val) {



  %cmp = icmp slt <4 x i32> %val, zeroinitializer
  %neg = sub <4 x i32> zeroinitializer, %val
  %ret = select <4 x i1> %cmp, <4 x i32> %neg, <4 x i32> %val
  ret <4 x i32> %ret
}


define <4 x i32> @f2(<4 x i32> %val) {



  %cmp = icmp sle <4 x i32> %val, zeroinitializer
  %neg = sub <4 x i32> zeroinitializer, %val
  %ret = select <4 x i1> %cmp, <4 x i32> %neg, <4 x i32> %val
  ret <4 x i32> %ret
}


define <4 x i32> @f3(<4 x i32> %val) {



  %cmp = icmp sgt <4 x i32> %val, zeroinitializer
  %neg = sub <4 x i32> zeroinitializer, %val
  %ret = select <4 x i1> %cmp, <4 x i32> %val, <4 x i32> %neg
  ret <4 x i32> %ret
}


define <4 x i32> @f4(<4 x i32> %val) {



  %cmp = icmp sge <4 x i32> %val, zeroinitializer
  %neg = sub <4 x i32> zeroinitializer, %val
  %ret = select <4 x i1> %cmp, <4 x i32> %val, <4 x i32> %neg
  ret <4 x i32> %ret
}



define <4 x i32> @f5(<4 x i32> %val) {




  %cmp = icmp slt <4 x i32> %val, zeroinitializer
  %neg = sub <4 x i32> zeroinitializer, %val
  %abs = select <4 x i1> %cmp, <4 x i32> %neg, <4 x i32> %val
  %ret = sub <4 x i32> zeroinitializer, %abs
  ret <4 x i32> %ret
}


define <4 x i32> @f6(<4 x i32> %val) {




  %cmp = icmp slt <4 x i32> %val, zeroinitializer
  %neg = sub <4 x i32> zeroinitializer, %val
  %ret = select <4 x i1> %cmp, <4 x i32> %val, <4 x i32> %neg
  ret <4 x i32> %ret
}


define <4 x i32> @f7(<4 x i32> %val) {




  %cmp = icmp sle <4 x i32> %val, zeroinitializer
  %neg = sub <4 x i32> zeroinitializer, %val
  %ret = select <4 x i1> %cmp, <4 x i32> %val, <4 x i32> %neg
  ret <4 x i32> %ret
}


define <4 x i32> @f8(<4 x i32> %val) {




  %cmp = icmp sgt <4 x i32> %val, zeroinitializer
  %neg = sub <4 x i32> zeroinitializer, %val
  %ret = select <4 x i1> %cmp, <4 x i32> %neg, <4 x i32> %val
  ret <4 x i32> %ret
}


define <4 x i32> @f9(<4 x i32> %val) {




  %cmp = icmp sge <4 x i32> %val, zeroinitializer
  %neg = sub <4 x i32> zeroinitializer, %val
  %ret = select <4 x i1> %cmp, <4 x i32> %neg, <4 x i32> %val
  ret <4 x i32> %ret
}


define <4 x i32> @f10(<4 x i32> %val) {



  %shr = ashr <4 x i32> %val, <i32 31, i32 31, i32 31, i32 31>
  %neg = sub <4 x i32> zeroinitializer, %val
  %and1 = and <4 x i32> %shr, %neg
  %not = xor <4 x i32> %shr, <i32 -1, i32 -1, i32 -1, i32 -1>
  %and2 = and <4 x i32> %not, %val
  %ret = or <4 x i32> %and1, %and2
  ret <4 x i32> %ret
}


define <4 x i32> @f11(<4 x i32> %val) {




  %shr = ashr <4 x i32> %val, <i32 31, i32 31, i32 31, i32 31>
  %and1 = and <4 x i32> %shr, %val
  %not = xor <4 x i32> %shr, <i32 -1, i32 -1, i32 -1, i32 -1>
  %neg = sub <4 x i32> zeroinitializer, %val
  %and2 = and <4 x i32> %not, %neg
  %ret = or <4 x i32> %and1, %and2
  ret <4 x i32> %ret
}
