


define i1 @test1(double %X, double %Y) {
        %tmp9 = fcmp ord double %X, 0.000000e+00
        %tmp13 = fcmp ord double %Y, 0.000000e+00
        %bothcond = and i1 %tmp13, %tmp9
        ret i1 %bothcond

}

define i1 @test2(i1 %X, i1 %Y) {
  %a = and i1 %X, %Y
  %b = and i1 %a, %X
  ret i1 %b



}

define i32 @test3(i32 %X, i32 %Y) {
  %a = and i32 %X, %Y
  %b = and i32 %Y, %a
  ret i32 %b



}

define i1 @test4(i32 %X) {
  %a = icmp ult i32 %X, 31
  %b = icmp slt i32 %X, 0
  %c = and i1 %a, %b
  ret i1 %c


}


define <4 x i32> @test5(<4 x i32> %A) {
  %1 = xor <4 x i32> %A, <i32 1, i32 2, i32 3, i32 4>
  %2 = and <4 x i32> <i32 1, i32 2, i32 3, i32 4>, %1
  ret <4 x i32> %2
}


define i32 @test6(i64 %x) nounwind {



  %cmp1 = icmp ne i64 %x, -1
  %not.cmp = icmp ne i64 %x, 0
  %.cmp1 = and i1 %cmp1, %not.cmp
  %land.ext = zext i1 %.cmp1 to i32
  ret i32 %land.ext
}

define i1 @test7(i32 %i, i1 %b) {




  %cmp1 = icmp slt i32 %i, 1
  %cmp2 = icmp sgt i32 %i, -1
  %and1 = and i1 %cmp1, %b
  %and2 = and i1 %and1, %cmp2
  ret i1 %and2
}

define i1 @test8(i32 %i) {




  %cmp1 = icmp ne i32 %i, 0
  %cmp2 = icmp ult i32 %i, 14
  %cond = and i1 %cmp1, %cmp2
  ret i1 %cond
}


define i64 @test9(i64 %x) {





  %sub = sub nsw i64 0, %x
  %and = and i64 %sub, 1
  ret i64 %and
}

define i64 @test10(i64 %x) {






  %sub = sub nsw i64 0, %x
  %and = and i64 %sub, 1
  %add = add i64 %sub, %and
  ret i64 %add
}
