




@general_dynamic_var = external thread_local global i32

define i32 @test_generaldynamic() {


  %val = load i32, i32* @general_dynamic_var
  ret i32 %val





























}

define i32* @test_generaldynamic_addr() {


  ret i32* @general_dynamic_var




















}

@local_dynamic_var = external thread_local(localdynamic) global i32

define i32 @test_localdynamic() {


  %val = load i32, i32* @local_dynamic_var
  ret i32 %val
































}

define i32* @test_localdynamic_addr() {



















  ret i32* @local_dynamic_var












}




@local_dynamic_var2 = external thread_local(localdynamic) global i32

define i32 @test_localdynamic_deduplicate() {


  %val = load i32, i32* @local_dynamic_var
  %val2 = load i32, i32* @local_dynamic_var2

  %sum = add i32 %val, %val2
  ret i32 %sum










}
