




define <16 x i32> @select00(i32 %a, <16 x i32> %b) nounwind {
  %cmpres = icmp eq i32 %a, 255
  %selres = select i1 %cmpres, <16 x i32> zeroinitializer, <16 x i32> %b
  %res = xor <16 x i32> %b, %selres
  ret <16 x i32> %res
}




define <8 x i64> @select01(i32 %a, <8 x i64> %b) nounwind {
  %cmpres = icmp eq i32 %a, 255
  %selres = select i1 %cmpres, <8 x i64> zeroinitializer, <8 x i64> %b
  %res = xor <8 x i64> %b, %selres
  ret <8 x i64> %res
}





define float @select02(float %a, float %b, float %c, float %eps) {
  %cmp = fcmp oge float %a, %eps
  %cond = select i1 %cmp, float %c, float %b
  ret float %cond
}





define double @select03(double %a, double %b, double %c, double %eps) {
  %cmp = fcmp oge double %a, %eps
  %cond = select i1 %cmp, double %c, double %b
  ret double %cond
}





define <16 x double> @select04(<16 x double> %a, <16 x double> %b) {
  %sel = select <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, <16 x double> %a, <16 x double> %b
  ret <16 x double> %sel
}








define i8 @select05(i8 %a.0, i8 %m) {
  %mask = bitcast i8 %m to <8 x i1>
  %a = bitcast i8 %a.0 to <8 x i1>
  %r = select <8 x i1> %mask, <8 x i1> <i1 -1, i1 -1, i1 -1, i1 -1, i1 -1, i1 -1, i1 -1, i1 -1>, <8 x i1> %a
  %res = bitcast <8 x i1> %r to i8
  ret i8 %res
}








define i8 @select06(i8 %a.0, i8 %m) {
  %mask = bitcast i8 %m to <8 x i1>
  %a = bitcast i8 %a.0 to <8 x i1>
  %r = select <8 x i1> %mask, <8 x i1> %a, <8 x i1> zeroinitializer
  %res = bitcast <8 x i1> %r to i8
  ret i8 %res
}













define i8 @select07(i8 %a.0, i8 %b.0, i8 %m) {
  %mask = bitcast i8 %m to <8 x i1>
  %a = bitcast i8 %a.0 to <8 x i1>
  %b = bitcast i8 %b.0 to <8 x i1>
  %r = select <8 x i1> %mask, <8 x i1> %a, <8 x i1> %b
  %res = bitcast <8 x i1> %r to i8
  ret i8 %res
}
