











%T = type { i32, [10 x i8] }



define void @test(i1 %C) {


  %M = alloca %T*, align 8 
  %A = alloca %T, align 8
  %B = alloca %T, align 8

  %MS = select i1 %C, %T* %B, %T* %A

  store %T* %MS, %T** %M

  %AP = load %T*, %T** %M 

  ret void
}
