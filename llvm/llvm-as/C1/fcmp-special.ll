





define i1 @inf0(double %arg) nounwind readnone {
  %tmp = fcmp ogt double %arg, 0x7FF0000000000000
  ret i1 %tmp
}



define i1 @inf1(double %arg) nounwind readnone {
  %tmp = fcmp ule double %arg, 0x7FF0000000000000
  ret i1 %tmp
}





define i1 @ninf0(double %arg) nounwind readnone {
  %tmp = fcmp olt double %arg, 0xFFF0000000000000
  ret i1 %tmp
}



define i1 @ninf1(double %arg) nounwind readnone {
  %tmp = fcmp uge double %arg, 0xFFF0000000000000
  ret i1 %tmp
}





define i1 @nan0(double %arg) nounwind readnone {
  %tmp = fcmp ord double %arg, 0x7FF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nan1(double %arg) nounwind readnone {
  %tmp = fcmp oeq double %arg, 0x7FF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nan2(double %arg) nounwind readnone {
  %tmp = fcmp olt double %arg, 0x7FF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nan3(double %arg) nounwind readnone {
  %tmp = fcmp uno double %arg, 0x7FF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nan4(double %arg) nounwind readnone {
  %tmp = fcmp une double %arg, 0x7FF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nan5(double %arg) nounwind readnone {
  %tmp = fcmp ult double %arg, 0x7FF00000FFFFFFFF
  ret i1 %tmp
}





define i1 @nnan0(double %arg) nounwind readnone {
  %tmp = fcmp ord double %arg, 0xFFF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nnan1(double %arg) nounwind readnone {
  %tmp = fcmp oeq double %arg, 0xFFF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nnan2(double %arg) nounwind readnone {
  %tmp = fcmp olt double %arg, 0xFFF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nnan3(double %arg) nounwind readnone {
  %tmp = fcmp uno double %arg, 0xFFF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nnan4(double %arg) nounwind readnone {
  %tmp = fcmp une double %arg, 0xFFF00000FFFFFFFF
  ret i1 %tmp
}



define i1 @nnan5(double %arg) nounwind readnone {
  %tmp = fcmp ult double %arg, 0xFFF00000FFFFFFFF
  ret i1 %tmp
}





define i1 @nzero0() {
  %tmp = fcmp oeq double 0.0, -0.0
  ret i1 %tmp
}



define i1 @nzero1() {
  %tmp = fcmp ogt double 0.0, -0.0
  ret i1 %tmp
}






define i1 @misc0(double %arg) {
  %tmp = fcmp oeq double %arg, %arg
  ret i1 %tmp
}



define i1 @misc1(double %arg) {
  %tmp = fcmp one double %arg, %arg
  ret i1 %tmp
}

