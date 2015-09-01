


@i = global i32 75, align 4
@s = global i16 -345, align 2
@c = global i8 118, align 1
@f = global float 0x40BE623360000000, align 4
@d = global double 1.298330e+03, align 8


define i32 @reti() {
entry:

  %0 = load i32, i32* @i, align 4
  ret i32 %0






}


define i16 @retus() {
entry:

  %0 = load i16, i16* @s, align 2
  ret i16 %0






}


define signext i16 @rets() {
entry:

  %0 = load i16, i16* @s, align 2
  ret i16 %0







}


define i8 @retuc() {
entry:

  %0 = load i8, i8* @c, align 1
  ret i8 %0






}


define signext i8 @retc() {
entry:

  %0 = load i8, i8* @c, align 1
  ret i8 %0







}


define float @retf() {
entry:

  %0 = load float, float* @f, align 4
  ret float %0






}


define double @retd() {
entry:

  %0 = load double, double* @d, align 8
  ret double %0






}
