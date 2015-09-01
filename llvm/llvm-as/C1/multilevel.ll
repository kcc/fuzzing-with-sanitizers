









%T = type { i32, [10 x i8] }



define void @test() {


  %M = alloca %T*, align 8
  %N = alloca %T*, align 8
  %A = alloca %T, align 8
  %B = alloca %T, align 8

  store %T* %A, %T** %M
  store %T* %B, %T** %N

  %AP = load %T*, %T** %M 
  %BP = load %T*, %T** %N 

  ret void
}
