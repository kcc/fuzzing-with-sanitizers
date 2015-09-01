






@var = global i32 0, align 4

define float @foo() {

  




  %val = load i32, i32* @var, align 4
  store i32 0, i32* @var, align 4

  %fltval = sitofp i32 %val to float
  ret float %fltval
}
