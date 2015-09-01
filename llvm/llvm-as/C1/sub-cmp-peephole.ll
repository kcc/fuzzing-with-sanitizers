




define i32 @f(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp sgt i32 %a, %b
  %sub = sub nsw i32 %a, %b
  %sub. = select i1 %cmp, i32 %sub, i32 0
  ret i32 %sub.
}

define i32 @g(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp slt i32 %a, %b
  %sub = sub nsw i32 %b, %a
  %sub. = select i1 %cmp, i32 %sub, i32 0
  ret i32 %sub.
}

define i32 @h(i32 %a, i32 %b) nounwind ssp {
entry:



  %cmp = icmp sgt i32 %a, 3
  %sub = sub nsw i32 %a, 3
  %sub. = select i1 %cmp, i32 %sub, i32 %b
  ret i32 %sub.
}


define i32 @i(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %cmp = icmp ult i32 %a, %b
  %sub = sub i32 %b, %a
  %sub. = select i1 %cmp, i32 %sub, i32 0
  ret i32 %sub.
}


define i32 @j(i32 %a, i32 %b) nounwind {
entry:



  %cmp = icmp eq i32 %b, %a
  %sub = sub nsw i32 %a, %b
  br i1 %cmp, label %if.then, label %if.else

if.then:
  %cmp2 = icmp sgt i32 %b, %a
  %sel = select i1 %cmp2, i32 %sub, i32 %a
  ret i32 %sel

if.else:
  ret i32 %sub
}







define i32 @bc_raise() nounwind ssp {
entry:
  %val.2.i = select i1 undef, i32 0, i32 undef
  %sub.i = sub nsw i32 0, %val.2.i
  %retval.0.i = select i1 undef, i32 %val.2.i, i32 %sub.i
  %cmp1 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end11

land.lhs.true:                                    
  ret i32 17

if.end11:                                         
  ret i32 23
}



define i32 @cmp_src_nonzero(i32 %a, i32 %b, i32 %x, i32 %y) {
entry:



  %sub = sub i32 %a, %b
  %cmp = icmp eq i32 %sub, 17
  %ret = select i1 %cmp, i32 %x, i32 %y
  ret i32 %ret
}

define float @float_sel(i32 %a, i32 %b, float %x, float %y) {
entry:





  %sub = sub i32 %a, %b
  %cmp = icmp eq i32 %sub, 0
  %ret = select i1 %cmp, float %x, float %y
  ret float %ret
}

define double @double_sel(i32 %a, i32 %b, double %x, double %y) {
entry:





  %sub = sub i32 %a, %b
  %cmp = icmp eq i32 %sub, 0
  %ret = select i1 %cmp, double %x, double %y
  ret double %ret
}

@t = common global i32 0
define double @double_sub(i32 %a, i32 %b, double %x, double %y) {
entry:





  %cmp = icmp sgt i32 %a, %b
  %sub = sub i32 %a, %b
  store i32 %sub, i32* @t
  %ret = select i1 %cmp, double %x, double %y
  ret double %ret
}

define double @double_sub_swap(i32 %a, i32 %b, double %x, double %y) {
entry:







  %cmp = icmp sgt i32 %a, %b
  %sub = sub i32 %b, %a
  %ret = select i1 %cmp, double %x, double %y
  store i32 %sub, i32* @t
  ret double %ret
}

declare void @abort()
declare void @exit(i32)



define i32 @cmp_slt0(i32 %a, i32 %b, i32 %x, i32 %y) {
entry:




  %load = load i32, i32* @t, align 4
  %sub = sub i32 %load, 17
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:
  call void @abort()
  unreachable

if.else:
  call void @exit(i32 0)
  unreachable
}



define i32 @cmp_ult0(i32 %a, i32 %b, i32 %x, i32 %y) {
entry:




  %load = load i32, i32* @t, align 4
  %sub = sub i32 %load, 17
  %cmp = icmp ult i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:
  call void @abort()
  unreachable

if.else:
  call void @exit(i32 0)
  unreachable
}
