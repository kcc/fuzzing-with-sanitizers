






define i32 @foo(i32 %x) nounwind ssp uwtable {

  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %9 [

    i32 -3, label %4

    i32 -2, label %4

    i32 -1, label %4

    i32 0, label %4

    i32 1, label %4

    i32 2, label %4

    i32 4, label %5

    i32 5, label %6

    i32 6, label %7

    i32 7, label %8

  ]


  store i32 -1, i32* %1
  br label %11


  store i32 2, i32* %1
  br label %11


  store i32 1, i32* %1
  br label %11


  store i32 4, i32* %1
  br label %11


  store i32 3, i32* %1
  br label %11


  br label %10


  store i32 0, i32* %1
  br label %11


  %12 = load i32, i32* %1
  ret i32 %12
}
