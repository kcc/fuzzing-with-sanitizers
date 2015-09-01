




define <8 x i16> @f1(<8 x i16> %val) {



  %cmp = icmp slt <8 x i16> %val, zeroinitializer
  %neg = sub <8 x i16> zeroinitializer, %val
  %ret = select <8 x i1> %cmp, <8 x i16> %neg, <8 x i16> %val
  ret <8 x i16> %ret
}


define <8 x i16> @f2(<8 x i16> %val) {



  %cmp = icmp sle <8 x i16> %val, zeroinitializer
  %neg = sub <8 x i16> zeroinitializer, %val
  %ret = select <8 x i1> %cmp, <8 x i16> %neg, <8 x i16> %val
  ret <8 x i16> %ret
}


define <8 x i16> @f3(<8 x i16> %val) {



  %cmp = icmp sgt <8 x i16> %val, zeroinitializer
  %neg = sub <8 x i16> zeroinitializer, %val
  %ret = select <8 x i1> %cmp, <8 x i16> %val, <8 x i16> %neg
  ret <8 x i16> %ret
}


define <8 x i16> @f4(<8 x i16> %val) {



  %cmp = icmp sge <8 x i16> %val, zeroinitializer
  %neg = sub <8 x i16> zeroinitializer, %val
  %ret = select <8 x i1> %cmp, <8 x i16> %val, <8 x i16> %neg
  ret <8 x i16> %ret
}



define <8 x i16> @f5(<8 x i16> %val) {




  %cmp = icmp slt <8 x i16> %val, zeroinitializer
  %neg = sub <8 x i16> zeroinitializer, %val
  %abs = select <8 x i1> %cmp, <8 x i16> %neg, <8 x i16> %val
  %ret = sub <8 x i16> zeroinitializer, %abs
  ret <8 x i16> %ret
}


define <8 x i16> @f6(<8 x i16> %val) {




  %cmp = icmp slt <8 x i16> %val, zeroinitializer
  %neg = sub <8 x i16> zeroinitializer, %val
  %ret = select <8 x i1> %cmp, <8 x i16> %val, <8 x i16> %neg
  ret <8 x i16> %ret
}


define <8 x i16> @f7(<8 x i16> %val) {




  %cmp = icmp sle <8 x i16> %val, zeroinitializer
  %neg = sub <8 x i16> zeroinitializer, %val
  %ret = select <8 x i1> %cmp, <8 x i16> %val, <8 x i16> %neg
  ret <8 x i16> %ret
}


define <8 x i16> @f8(<8 x i16> %val) {




  %cmp = icmp sgt <8 x i16> %val, zeroinitializer
  %neg = sub <8 x i16> zeroinitializer, %val
  %ret = select <8 x i1> %cmp, <8 x i16> %neg, <8 x i16> %val
  ret <8 x i16> %ret
}


define <8 x i16> @f9(<8 x i16> %val) {




  %cmp = icmp sge <8 x i16> %val, zeroinitializer
  %neg = sub <8 x i16> zeroinitializer, %val
  %ret = select <8 x i1> %cmp, <8 x i16> %neg, <8 x i16> %val
  ret <8 x i16> %ret
}


define <8 x i16> @f10(<8 x i16> %val) {



  %shr = ashr <8 x i16> %val,
              <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>
  %neg = sub <8 x i16> zeroinitializer, %val
  %and1 = and <8 x i16> %shr, %neg
  %not = xor <8 x i16> %shr,
             <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  %and2 = and <8 x i16> %not, %val
  %ret = or <8 x i16> %and1, %and2
  ret <8 x i16> %ret
}


define <8 x i16> @f11(<8 x i16> %val) {




  %shr = ashr <8 x i16> %val,
              <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>
  %and1 = and <8 x i16> %shr, %val
  %not = xor <8 x i16> %shr,
             <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  %neg = sub <8 x i16> zeroinitializer, %val
  %and2 = and <8 x i16> %not, %neg
  %ret = or <8 x i16> %and1, %and2
  ret <8 x i16> %ret
}
