



declare extern_weak i32 @var()

define i32()* @foo() {



  ret i32()* @var










  
  




}


@arr_var = extern_weak global [10 x i32]

define i32* @bar() {
  %addr = getelementptr [10 x i32], [10 x i32]* @arr_var, i32 0, i32 5











  ret i32* %addr

  
  




}

@defined_weak_var = internal unnamed_addr global i32 0

define i32* @wibble() {
  ret i32* @defined_weak_var











}
