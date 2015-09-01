

declare i32 @def(i32)
declare i1 @use(i32)




define void @test1() {

 entry:
  %t = alloca i32
  br label %loop

 loop:
  %v = load i32, i32* %t
  %c = call i1 @use(i32 %v)


  %n = call i32 @def(i32 7)
  store i32 %n, i32* %t
  br i1 %c, label %loop, label %exit

 exit:
  ret void
}



define void @test2() {

 entry:
  %t = alloca i32
  br label %loop

 loop:
  %v = load i32, i32* %t
  %c = call i1 @use(i32 %v)

  br i1 %c, label %loop, label %exit

 exit:
  ret void
}
