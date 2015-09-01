








define void @test() {
entry:

  %0 = call i32 @get()


  call void @put(i32 %0)


  ret void
}

declare i32 @get()
declare void @put(i32)
