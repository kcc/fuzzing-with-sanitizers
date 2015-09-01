



define i32 @t1(i32 %a, i32 %b, i32 %c) nounwind {








  %tmp1 = icmp sgt i32 %c, 10
  %tmp2 = select i1 %tmp1, i32 0, i32 2147483647
  %tmp3 = add i32 %tmp2, %b
  ret i32 %tmp3
}

define i32 @t2(i32 %a, i32 %b, i32 %c, i32 %d) nounwind {







  %tmp1 = icmp sgt i32 %c, 10
  %tmp2 = select i1 %tmp1, i32 0, i32 10
  %tmp3 = sub i32 %b, %tmp2
  ret i32 %tmp3
}

define i32 @t3(i32 %a, i32 %b, i32 %x, i32 %y) nounwind {







  %cond = icmp slt i32 %a, %b
  %z = select i1 %cond, i32 -1, i32 %x
  %s = and i32 %z, %y
 ret i32 %s
}

define i32 @t4(i32 %a, i32 %b, i32 %x, i32 %y) nounwind {







  %cond = icmp slt i32 %a, %b
  %z = select i1 %cond, i32 0, i32 %x
  %s = or i32 %z, %y
 ret i32 %s
}

define i32 @t5(i32 %a, i32 %b, i32 %c) nounwind {
entry:







  %tmp1 = icmp eq i32 %a, %b
  %tmp2 = zext i1 %tmp1 to i32
  %tmp3 = or i32 %tmp2, %c
  ret i32 %tmp3
}

define i32 @t6(i32 %a, i32 %b, i32 %c, i32 %d) nounwind {







  %cond = icmp slt i32 %a, %b
  %tmp1 = select i1 %cond, i32 %c, i32 0
  %tmp2 = xor i32 %tmp1, %d
  ret i32 %tmp2
}

define i32 @t7(i32 %a, i32 %b, i32 %c) nounwind {
entry:







  %tmp1 = shl i32 %c, 1
  %cond = icmp eq i32 %a, %b
  %tmp2 = select i1 %cond, i32 %tmp1, i32 -1
  %tmp3 = and i32 %c, %tmp2
  ret i32 %tmp3
}


define i32 @t8(i32 %a, i32 %b) nounwind {







  %x = or i32 %b, 1
  %cond = icmp slt i32 %a, %b
  %tmp1 = select i1 %cond, i32 %a, i32 %x
  ret i32 %tmp1
}


define i32 @t9(i32 %a, i32 %b, i32 %c) nounwind {







  %x = and i32 %b, %c
  %cond = icmp slt i32 %a, %b
  %tmp1 = select i1 %cond, i32 %a, i32 %x
  ret i32 %tmp1
}


define i32 @t10(i32 %a, i32 %b, i32 %c, i32 %d) nounwind {







  %s = shl i32 %c, 7
  %x = xor i32 %b, %s
  %cond = icmp slt i32 %a, %b
  %tmp1 = select i1 %cond, i32 %a, i32 %x
  ret i32 %tmp1
}


define i32 @t11(i32 %a, i32 %b) nounwind {







  %x = or i32 %b, 1
  %cond = icmp slt i32 %a, %b
  %tmp1 = select i1 %cond, i32 %x, i32 %a
  ret i32 %tmp1
}


define i32 @t12(i32 %a, i32 %b) nounwind {







  %x = add i32 %b, 3000
  %cond = icmp slt i32 %a, %b
  %tmp1 = select i1 %cond, i32 %a, i32 %x
  ret i32 %tmp1
}


define void @pr13628() nounwind uwtable align 2 {
  %x3 = alloca i8, i32 256, align 8
  %x4 = load i8, i8* undef, align 1
  %x5 = icmp ne i8 %x4, 0
  %x6 = select i1 %x5, i8* %x3, i8* null
  call void @bar(i8* %x6) nounwind
  ret void
}
declare void @bar(i8*)


define i32 @t13(i32 %c, i32 %a) nounwind readnone ssp {
entry:







  %cmp = icmp sgt i32 %a, 10
  %conv = zext i1 %cmp to i32
  %add = add i32 %conv, %c
  ret i32 %add
}


define i32 @t14(i32 %c, i32 %a) nounwind readnone ssp {
entry:







  %cmp = icmp sgt i32 %a, 10
  %conv = sext i1 %cmp to i32
  %add = add i32 %conv, %c
  ret i32 %add
}


define i32 @t15(i32 %p) {
entry:












  %cmp = icmp sgt i32 %p, 8
  %a = select i1 %cmp, i32 1, i32 2
  %xor = xor i32 %a, 1
  ret i32 %xor
}

define i32 @t16(i32 %x, i32 %y) {
entry:





  %cmp = icmp eq i32 %x, 0
  %cond = select i1 %cmp, i32 5, i32 2
  %cmp1 = icmp eq i32 %y, 0
  %cond2 = select i1 %cmp1, i32 3, i32 4
  %and = and i32 %cond2, %cond
  ret i32 %and
}

define i32 @t17(i32 %x, i32 %y) #0 {
entry:





  %cmp = icmp eq i32 %x, -1
  %cond = select i1 %cmp, i32 5, i32 2
  %cmp1 = icmp eq i32 %y, -1
  %cond2 = select i1 %cmp1, i32 3, i32 4
  %and = and i32 %cond2, %cond
  ret i32 %and
}

define i32 @t18(i32 %x, i32 %y) #0 {
entry:





  %cmp = icmp ne i32 %x, 0
  %cond = select i1 %cmp, i32 5, i32 2
  %cmp1 = icmp ne i32 %x, -1
  %cond2 = select i1 %cmp1, i32 3, i32 4
  %and = and i32 %cond2, %cond
  ret i32 %and
}

define i32 @t19(i32 %x, i32 %y) #0 {
entry:





  %cmp = icmp ne i32 %x, 0
  %cond = select i1 %cmp, i32 5, i32 2
  %cmp1 = icmp ne i32 %y, 0
  %cond2 = select i1 %cmp1, i32 3, i32 4
  %or = or i32 %cond2, %cond
  ret i32 %or
}

define i32 @t20(i32 %x, i32 %y) #0 {
entry:





  %cmp = icmp ne i32 %x, -1
  %cond = select i1 %cmp, i32 5, i32 2
  %cmp1 = icmp ne i32 %y, -1
  %cond2 = select i1 %cmp1, i32 3, i32 4
  %or = or i32 %cond2, %cond
  ret i32 %or
}

define  <2 x i32> @t21(<2 x i32> %lhs, <2 x i32> %rhs) {




  %tst = icmp eq <2 x i32> %lhs, %rhs
  %ntst = xor <2 x i1> %tst, <i1 1 , i1 undef>
  %btst = sext <2 x i1> %ntst to <2 x i32>
  ret <2 x i32> %btst
}
