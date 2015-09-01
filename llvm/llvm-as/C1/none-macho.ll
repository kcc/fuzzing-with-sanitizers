



@var = external global i32

define i32 @test_litpool() minsize {

  %val = load i32, i32* @var
  ret i32 %val

  


}

define i32 @test_movw_movt() {

  %val = load i32, i32* @var
  ret i32 %val

  




}

declare void @llvm.trap()

define void @test_trap() {


  
  
  call void @llvm.trap()


  ret void
}

define i32 @test_frame_ptr() {

  call void @test_trap()

  

  ret i32 42
}

%big_arr = type [8 x i32]
define void @test_two_areas(%big_arr* %addr) {

  %val = load %big_arr, %big_arr* %addr
  call void @test_trap()
  store %big_arr %val, %big_arr* %addr

  
  
  



  ret void
}

define void @test_tail_call() {

  tail call void @test_trap()

  

  ret void
}

define float @test_softfloat_calls(float %in) {

  %sum = fadd float %in, %in

  
  

  ret float %sum
}

  
  




  
  

