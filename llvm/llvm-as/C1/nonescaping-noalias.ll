






@g1 = internal global i32 0

define i32 @test1(i32* %param) {







entry:
  store i32 42, i32* @g1
  store i32 7, i32* %param
  %v = load i32, i32* @g1
  ret i32 %v
}

declare i32* @f()

define i32 @test2() {








entry:
  %ptr = call i32* @f() readnone
  store i32 42, i32* @g1
  store i32 7, i32* %ptr
  %v = load i32, i32* @g1
  ret i32 %v
}

@g2 = external global i32*

define i32 @test3() {









entry:
  store i32 42, i32* @g1
  %ptr1 = load i32*, i32** @g2
  store i32 7, i32* %ptr1
  %v = load i32, i32* @g1
  ret i32 %v
}

@g3 = internal global i32 1
@g4 = internal global [10 x i32*] zeroinitializer

define i32 @test4(i32* %param, i32 %n, i1 %c1, i1 %c2, i1 %c3) {










entry:
  %call = call i32* @f()
  store i32 42, i32* @g1
  %ptr1 = load i32*, i32** @g2
  %ptr2 = select i1 %c1, i32* %ptr1, i32* %param
  %ptr3 = select i1 %c3, i32* %ptr2, i32* @g3
  br label %loop

loop:
  %iv = phi i32 [ 0, %entry ], [ %inc, %loop ]
  %ptr = phi i32* [ %ptr3, %entry ], [ %ptr5, %loop ]
  store i32 7, i32* %ptr
  %ptr4 = load i32*, i32** getelementptr ([10 x i32*], [10 x i32*]* @g4, i32 0, i32 1)
  %ptr5 = select i1 %c2, i32* %ptr4, i32* %call
  %inc = add i32 %iv, 1
  %test = icmp slt i32 %inc, %n
  br i1 %test, label %loop, label %exit

exit:
  %v = load i32, i32* @g1
  ret i32 %v
}
