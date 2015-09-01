









@general_dynamic_var = external thread_local global i32

define i32 @test_generaldynamic() {


  %val = load i32, i32* @general_dynamic_var
  ret i32 %val










}

@emulated_init_var = thread_local global i32 37, align 8

define i32 @test_emulated_init() {


  %val = load i32, i32* @emulated_init_var
  ret i32 %val















}



