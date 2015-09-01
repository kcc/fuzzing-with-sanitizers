







declare <8 x i32>    @i8(...)
declare <4 x float>  @f4(...)
declare <4 x double> @d4(...)

define i32 @call_i8() {
entry:
  %call = call <8 x i32> (...) @i8()
  %v0 = extractelement <8 x i32> %call, i32 0
  %v1 = extractelement <8 x i32> %call, i32 1
  %v2 = extractelement <8 x i32> %call, i32 2
  %v3 = extractelement <8 x i32> %call, i32 3
  %v4 = extractelement <8 x i32> %call, i32 4
  %v5 = extractelement <8 x i32> %call, i32 5
  %v6 = extractelement <8 x i32> %call, i32 6
  %v7 = extractelement <8 x i32> %call, i32 7
  %add1 = add i32 %v0, %v1
  %add2 = add i32 %v2, %v3
  %add3 = add i32 %v4, %v5
  %add4 = add i32 %v6, %v7
  %add5 = add i32 %add1, %add2
  %add6 = add i32 %add3, %add4
  %add7 = add i32 %add5, %add6
  ret i32 %add7












}


define float @call_f4() {
entry:
  %call = call <4 x float> (...) @f4()
  %v0 = extractelement <4 x float> %call, i32 0
  %v1 = extractelement <4 x float> %call, i32 1
  %v2 = extractelement <4 x float> %call, i32 2
  %v3 = extractelement <4 x float> %call, i32 3
  %add1 = fadd float %v0, %v1
  %add2 = fadd float %v2, %v3
  %add3 = fadd float %add1, %add2
  ret float %add3








}


define double @call_d4() {
entry:
  %call = call <4 x double> (...) @d4()
  %v0 = extractelement <4 x double> %call, i32 0
  %v1 = extractelement <4 x double> %call, i32 1
  %v2 = extractelement <4 x double> %call, i32 2
  %v3 = extractelement <4 x double> %call, i32 3
  %add1 = fadd double %v0, %v1
  %add2 = fadd double %v2, %v3
  %add3 = fadd double %add1, %add2
  ret double %add3








}







declare <4 x i32>    @i4(...)
declare <2 x float>  @f2(...)
declare <2 x double> @d2(...)

define i32 @call_i4() {
entry:
  %call = call <4 x i32> (...) @i4()
  %v0 = extractelement <4 x i32> %call, i32 0
  %v1 = extractelement <4 x i32> %call, i32 1
  %v2 = extractelement <4 x i32> %call, i32 2
  %v3 = extractelement <4 x i32> %call, i32 3
  %add1 = add i32 %v0, %v1
  %add2 = add i32 %v2, %v3
  %add3 = add i32 %add1, %add2
  ret i32 %add3







}


define float @call_f2() {
entry:
  %call = call <2 x float> (...) @f2()
  %v0 = extractelement <2 x float> %call, i32 0
  %v1 = extractelement <2 x float> %call, i32 1
  %add1 = fadd float %v0, %v1
  ret float %add1





}


define double @call_d2() {
entry:
  %call = call <2 x double> (...) @d2()
  %v0 = extractelement <2 x double> %call, i32 0
  %v1 = extractelement <2 x double> %call, i32 1
  %add1 = fadd double %v0, %v1
  ret double %add1





}








define <8 x i32> @return_i8() {
entry:
  ret <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>










}


define <4 x float> @return_f4(float %a, float %b, float %c, float %d) {
entry:
  %vecins1 = insertelement <4 x float> undef,    float %a, i32 0
  %vecins2 = insertelement <4 x float> %vecins1, float %b, i32 1
  %vecins3 = insertelement <4 x float> %vecins2, float %c, i32 2
  %vecins4 = insertelement <4 x float> %vecins3, float %d, i32 3
  ret <4 x float> %vecins4







}


define <4 x double> @return_d4(double %a, double %b, double %c, double %d) {
entry:
  %vecins1 = insertelement <4 x double> undef,    double %a, i32 0
  %vecins2 = insertelement <4 x double> %vecins1, double %b, i32 1
  %vecins3 = insertelement <4 x double> %vecins2, double %c, i32 2
  %vecins4 = insertelement <4 x double> %vecins3, double %d, i32 3
  ret <4 x double> %vecins4






}







define <4 x i32> @return_i4() {
entry:
  ret <4 x i32> <i32 0, i32 1, i32 2, i32 3>






}


define <2 x float> @return_f2(float %a, float %b) {
entry:
  %vecins1 = insertelement <2 x float> undef,    float %a, i32 0
  %vecins2 = insertelement <2 x float> %vecins1, float %b, i32 1
  ret <2 x float> %vecins2




}


define <2 x double> @return_d2(double %a, double %b) {
entry:
  %vecins1 = insertelement <2 x double> undef,    double %a, i32 0
  %vecins2 = insertelement <2 x double> %vecins1, double %b, i32 1
  ret <2 x double> %vecins2




}
