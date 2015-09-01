
target triple = "x86_64-unknown-unknown"




define i32 @select_and(i32 %a0, i32 %a1, float %a2, float %a3, i32 %a4, i32 %a5) {






  %cmp0 = icmp ult i32 %a0, %a1
  %cmp1 = fcmp olt float %a2, %a3
  %and = and i1 %cmp0, %cmp1
  %res = select i1 %and, i32 %a4, i32 %a5
  ret i32 %res
}

define i32 @select_or(i32 %a0, i32 %a1, float %a2, float %a3, i32 %a4, i32 %a5) {








  %cmp0 = icmp ult i32 %a0, %a1
  %cmp1 = fcmp olt float %a2, %a3
  %and = or i1 %cmp0, %cmp1
  %res = select i1 %and, i32 %a4, i32 %a5
  ret i32 %res
}




@var32 = global i32 0
define i32 @select_noopt(i32 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4) {



  %cmp0 = icmp ult i32 %a0, %a1
  %cmp1 = icmp ult i32 %a1, %a2
  %or = or i1 %cmp0, %cmp1
  %zero_one = zext i1 %or to i32
  store volatile i32 %zero_one, i32* @var32
  %res = select i1 %or, i32 %a3, i32 %a4
  ret i32 %res
}
