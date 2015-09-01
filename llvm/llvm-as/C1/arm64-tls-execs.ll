


@initial_exec_var = external thread_local(initialexec) global i32

define i32 @test_initial_exec() {

  %val = load i32, i32* @initial_exec_var









  ret i32 %val
}

define i32* @test_initial_exec_addr() {

  ret i32* @initial_exec_var









}

@local_exec_var = thread_local(localexec) global i32 0

define i32 @test_local_exec() {

  %val = load i32, i32* @local_exec_var








  ret i32 %val
}

define i32* @test_local_exec_addr() {

  ret i32* @local_exec_var








}
