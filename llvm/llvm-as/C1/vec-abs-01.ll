




define <16 x i8> @f1(<16 x i8> %val) {



  %cmp = icmp slt <16 x i8> %val, zeroinitializer
  %neg = sub <16 x i8> zeroinitializer, %val
  %ret = select <16 x i1> %cmp, <16 x i8> %neg, <16 x i8> %val
  ret <16 x i8> %ret
}


define <16 x i8> @f2(<16 x i8> %val) {



  %cmp = icmp sle <16 x i8> %val, zeroinitializer
  %neg = sub <16 x i8> zeroinitializer, %val
  %ret = select <16 x i1> %cmp, <16 x i8> %neg, <16 x i8> %val
  ret <16 x i8> %ret
}


define <16 x i8> @f3(<16 x i8> %val) {



  %cmp = icmp sgt <16 x i8> %val, zeroinitializer
  %neg = sub <16 x i8> zeroinitializer, %val
  %ret = select <16 x i1> %cmp, <16 x i8> %val, <16 x i8> %neg
  ret <16 x i8> %ret
}


define <16 x i8> @f4(<16 x i8> %val) {



  %cmp = icmp sge <16 x i8> %val, zeroinitializer
  %neg = sub <16 x i8> zeroinitializer, %val
  %ret = select <16 x i1> %cmp, <16 x i8> %val, <16 x i8> %neg
  ret <16 x i8> %ret
}



define <16 x i8> @f5(<16 x i8> %val) {




  %cmp = icmp slt <16 x i8> %val, zeroinitializer
  %neg = sub <16 x i8> zeroinitializer, %val
  %abs = select <16 x i1> %cmp, <16 x i8> %neg, <16 x i8> %val
  %ret = sub <16 x i8> zeroinitializer, %abs
  ret <16 x i8> %ret
}


define <16 x i8> @f6(<16 x i8> %val) {




  %cmp = icmp slt <16 x i8> %val, zeroinitializer
  %neg = sub <16 x i8> zeroinitializer, %val
  %ret = select <16 x i1> %cmp, <16 x i8> %val, <16 x i8> %neg
  ret <16 x i8> %ret
}


define <16 x i8> @f7(<16 x i8> %val) {




  %cmp = icmp sle <16 x i8> %val, zeroinitializer
  %neg = sub <16 x i8> zeroinitializer, %val
  %ret = select <16 x i1> %cmp, <16 x i8> %val, <16 x i8> %neg
  ret <16 x i8> %ret
}


define <16 x i8> @f8(<16 x i8> %val) {




  %cmp = icmp sgt <16 x i8> %val, zeroinitializer
  %neg = sub <16 x i8> zeroinitializer, %val
  %ret = select <16 x i1> %cmp, <16 x i8> %neg, <16 x i8> %val
  ret <16 x i8> %ret
}


define <16 x i8> @f9(<16 x i8> %val) {




  %cmp = icmp sge <16 x i8> %val, zeroinitializer
  %neg = sub <16 x i8> zeroinitializer, %val
  %ret = select <16 x i1> %cmp, <16 x i8> %neg, <16 x i8> %val
  ret <16 x i8> %ret
}


define <16 x i8> @f10(<16 x i8> %val) {



  %shr = ashr <16 x i8> %val,
              <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7,
               i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
  %neg = sub <16 x i8> zeroinitializer, %val
  %and1 = and <16 x i8> %shr, %neg
  %not = xor <16 x i8> %shr,
             <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1,
              i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %and2 = and <16 x i8> %not, %val
  %ret = or <16 x i8> %and1, %and2
  ret <16 x i8> %ret
}


define <16 x i8> @f11(<16 x i8> %val) {




  %shr = ashr <16 x i8> %val,
              <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7,
               i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
  %and1 = and <16 x i8> %shr, %val
  %not = xor <16 x i8> %shr,
             <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1,
              i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %neg = sub <16 x i8> zeroinitializer, %val
  %and2 = and <16 x i8> %not, %neg
  %ret = or <16 x i8> %and1, %and2
  ret <16 x i8> %ret
}
