

declare ghccc void @g()

define ghccc void @test_direct_tail() {



  tail call ghccc void @g()
  ret void
}

@ind_func = global void()* zeroinitializer

define ghccc void @test_indirect_tail() {


  %func = load void()*, void()** @ind_func
  tail call ghccc void() %func()
  ret void
}
