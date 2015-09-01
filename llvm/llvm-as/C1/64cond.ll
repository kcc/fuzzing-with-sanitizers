





define void @cmpri(i64* %p, i64 %x) {
entry:
  %tobool = icmp eq i64 %x, 1
  br i1 %tobool, label %if.end, label %if.then

if.then:
  store i64 %x, i64* %p, align 8
  br label %if.end

if.end:
  ret void
}




define void @cmprr(i64* %p, i64 %x, i64 %y) {
entry:
  %tobool = icmp ugt i64 %x, %y
  br i1 %tobool, label %if.end, label %if.then

if.then:
  store i64 %x, i64* %p, align 8
  br label %if.end

if.end:
  ret void
}





define i32 @selecti32_xcc(i64 %x, i64 %y, i32 %a, i32 %b) {
entry:
  %tobool = icmp sgt i64 %x, %y
  %rv = select i1 %tobool, i32 %a, i32 %b
  ret i32 %rv
}





define i64 @selecti64_xcc(i64 %x, i64 %y, i64 %a, i64 %b) {
entry:
  %tobool = icmp sgt i64 %x, %y
  %rv = select i1 %tobool, i64 %a, i64 %b
  ret i64 %rv
}





define i64 @selecti64_icc(i32 %x, i32 %y, i64 %a, i64 %b) {
entry:
  %tobool = icmp sgt i32 %x, %y
  %rv = select i1 %tobool, i64 %a, i64 %b
  ret i64 %rv
}





define i64 @selecti64_fcc(float %x, float %y, i64 %a, i64 %b) {
entry:
  %tobool = fcmp ult float %x, %y
  %rv = select i1 %tobool, i64 %a, i64 %b
  ret i64 %rv
}





define float @selectf32_xcc(i64 %x, i64 %y, float %a, float %b) {
entry:
  %tobool = icmp sgt i64 %x, %y
  %rv = select i1 %tobool, float %a, float %b
  ret float %rv
}





define double @selectf64_xcc(i64 %x, i64 %y, double %a, double %b) {
entry:
  %tobool = icmp sgt i64 %x, %y
  %rv = select i1 %tobool, double %a, double %b
  ret double %rv
}





define i64 @select_consti64_xcc(i64 %x, i64 %y) {
entry:
  %tobool = icmp sgt i64 %x, %y
  %rv = select i1 %tobool, i64 123, i64 0
  ret i64 %rv
}











define i1 @setcc_resultty(i64 %a, i1 %b) {
  %a0 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 32)
  %a1 = extractvalue { i64, i1 } %a0, 1
  %a4 = or i1 %a1, %b
  ret i1 %a4
}

declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64)
