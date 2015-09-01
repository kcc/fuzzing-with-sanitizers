


define available_externally i32 @test_function() {
  ret i32 4
}


@test_global = available_externally global i32 4

