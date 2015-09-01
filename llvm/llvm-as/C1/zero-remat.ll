




declare void @bar(double %x)
declare void @barf(float %x)

define double @foo() nounwind {

  call void @bar(double 0.0)
  ret double 0.0











}


define float @foof() nounwind {
  call void @barf(float 0.0)
  ret float 0.0











}
