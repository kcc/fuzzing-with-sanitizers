

declare void @bar() nounwind

@a = external constant float

declare void @qux(float %f) nounwind 

define void @foo() nounwind  {
  %f = load float, float* @a
  call void @bar()
  call void @qux(float %f)
  call void @qux(float %f)
  ret void
}
