
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"





define signext i32 @testi32slt(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp slt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define signext i32 @testi32ult(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp ult i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define signext i32 @testi32sle(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp sle i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define signext i32 @testi32ule(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp ule i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define signext i32 @testi32eq(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define signext i32 @testi32sge(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp sge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define signext i32 @testi32uge(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp uge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define signext i32 @testi32sgt(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp sgt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define signext i32 @testi32ugt(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp ugt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define signext i32 @testi32ne(i32 signext %c1, i32 signext %c2, i32 signext %c3, i32 signext %c4, i32 signext %a1, i32 signext %a2) #0 {
entry:
  %cmp1 = icmp eq i32 %c3, %c4
  %cmp3tmp = icmp eq i32 %c1, %c2
  %cmp3 = icmp ne i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i32 %a1, i32 %a2
  ret i32 %cond







}

define i64 @testi64slt(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp slt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define i64 @testi64ult(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp ult i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define i64 @testi64sle(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp sle i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define i64 @testi64ule(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp ule i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define i64 @testi64eq(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define i64 @testi64sge(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp sge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define i64 @testi64uge(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp uge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define i64 @testi64sgt(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp sgt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define i64 @testi64ugt(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp ugt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define i64 @testi64ne(i64 %c1, i64 %c2, i64 %c3, i64 %c4, i64 %a1, i64 %a2) #0 {
entry:
  %cmp1 = icmp eq i64 %c3, %c4
  %cmp3tmp = icmp eq i64 %c1, %c2
  %cmp3 = icmp ne i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, i64 %a1, i64 %a2
  ret i64 %cond







}

define float @testfloatslt(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp slt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define float @testfloatult(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ult i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define float @testfloatsle(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sle i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define float @testfloatule(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ule i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define float @testfloateq(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define float @testfloatsge(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define float @testfloatuge(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp uge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define float @testfloatsgt(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sgt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define float @testfloatugt(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ugt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define float @testfloatne(float %c1, float %c2, float %c3, float %c4, float %a1, float %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ne i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, float %a1, float %a2
  ret float %cond










}

define double @testdoubleslt(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp slt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define double @testdoubleult(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp ult i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define double @testdoublesle(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp sle i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define double @testdoubleule(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp ule i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define double @testdoubleeq(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define double @testdoublesge(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp sge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define double @testdoubleuge(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp uge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define double @testdoublesgt(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp sgt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define double @testdoubleugt(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp ugt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define double @testdoublene(double %c1, double %c2, double %c3, double %c4, double %a1, double %a2) #0 {
entry:
  %cmp1 = fcmp oeq double %c3, %c4
  %cmp3tmp = fcmp oeq double %c1, %c2
  %cmp3 = icmp ne i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, double %a1, double %a2
  ret double %cond










}

define <4 x float> @testv4floatslt(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp slt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond














}

define <4 x float> @testv4floatult(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ult i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond











}

define <4 x float> @testv4floatsle(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sle i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond











}

define <4 x float> @testv4floatule(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ule i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond











}

define <4 x float> @testv4floateq(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond











}

define <4 x float> @testv4floatsge(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond











}

define <4 x float> @testv4floatuge(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp uge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond











}

define <4 x float> @testv4floatsgt(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sgt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond











}

define <4 x float> @testv4floatugt(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ugt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond











}

define <4 x float> @testv4floatne(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ne i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond











}

define ppc_fp128 @testppc_fp128eq(ppc_fp128 %c1, ppc_fp128 %c2, ppc_fp128 %c3, ppc_fp128 %c4, ppc_fp128 %a1, ppc_fp128 %a2) #0 {
entry:
  %cmp1 = fcmp oeq ppc_fp128 %c3, %c4
  %cmp3tmp = fcmp oeq ppc_fp128 %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, ppc_fp128 %a1, ppc_fp128 %a2
  ret ppc_fp128 %cond






















}

define <2 x double> @testv2doubleslt(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp slt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <2 x double> @testv2doubleult(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ult i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <2 x double> @testv2doublesle(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sle i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <2 x double> @testv2doubleule(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ule i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <2 x double> @testv2doubleeq(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <2 x double> @testv2doublesge(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <2 x double> @testv2doubleuge(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp uge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <2 x double> @testv2doublesgt(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sgt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <2 x double> @testv2doubleugt(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ugt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <2 x double> @testv2doublene(float %c1, float %c2, float %c3, float %c4, <2 x double> %a1, <2 x double> %a2) #0 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ne i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <2 x double> %a1, <2 x double> %a2
  ret <2 x double> %cond








}

define <4 x double> @testqv4doubleslt(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp slt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x double> @testqv4doubleult(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ult i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x double> @testqv4doublesle(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sle i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x double> @testqv4doubleule(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ule i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x double> @testqv4doubleeq(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x double> @testqv4doublesge(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x double> @testqv4doubleuge(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp uge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x double> @testqv4doublesgt(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sgt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x double> @testqv4doubleugt(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ugt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x double> @testqv4doublene(float %c1, float %c2, float %c3, float %c4, <4 x double> %a1, <4 x double> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ne i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x double> %a1, <4 x double> %a2
  ret <4 x double> %cond










}

define <4 x float> @testqv4floatslt(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp slt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x float> @testqv4floatult(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ult i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x float> @testqv4floatsle(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sle i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x float> @testqv4floatule(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ule i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x float> @testqv4floateq(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x float> @testqv4floatsge(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x float> @testqv4floatuge(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp uge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x float> @testqv4floatsgt(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sgt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x float> @testqv4floatugt(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ugt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x float> @testqv4floatne(float %c1, float %c2, float %c3, float %c4, <4 x float> %a1, <4 x float> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ne i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x float> %a1, <4 x float> %a2
  ret <4 x float> %cond










}

define <4 x i1> @testqv4i1slt(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp slt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

define <4 x i1> @testqv4i1ult(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ult i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

define <4 x i1> @testqv4i1sle(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sle i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

define <4 x i1> @testqv4i1ule(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ule i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

define <4 x i1> @testqv4i1eq(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp eq i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

define <4 x i1> @testqv4i1sge(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

define <4 x i1> @testqv4i1uge(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp uge i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

define <4 x i1> @testqv4i1sgt(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp sgt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

define <4 x i1> @testqv4i1ugt(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ugt i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

define <4 x i1> @testqv4i1ne(float %c1, float %c2, float %c3, float %c4, <4 x i1> %a1, <4 x i1> %a2) #1 {
entry:
  %cmp1 = fcmp oeq float %c3, %c4
  %cmp3tmp = fcmp oeq float %c1, %c2
  %cmp3 = icmp ne i1 %cmp3tmp, %cmp1
  %cond = select i1 %cmp3, <4 x i1> %a1, <4 x i1> %a2
  ret <4 x i1> %cond










}

attributes #0 = { nounwind readnone "target-cpu"="pwr7" }
attributes #1 = { nounwind readnone "target-cpu"="a2q" }

