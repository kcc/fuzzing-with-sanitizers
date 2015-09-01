


define void @test0() {


BB1:
  switch i32 undef, label %BB2 [
    i32 3, label %BB2
    i32 5, label %BB2
    i32 0, label %BB3
    i32 2, label %BB3
    i32 4, label %BB3
  ]

BB2:
  %merge = phi i64 [ 1, %BB3 ], [ 0, %BB1 ], [ 0, %BB1 ], [ 0, %BB1 ]
  ret void

BB3:
  br label %BB2
}




define void @test1() {

entry:
  br label %bb1

bb1:
  switch i32 undef, label %bb1 [
    i32 84, label %bb3
    i32 85, label %bb3
    i32 86, label %bb2
    i32 78, label %exit
    i32 99, label %bb3
  ]

bb2:
  br label %bb3

bb3:


  %tmp = phi i32 [ 1, %bb1 ], [ 0, %bb2 ], [ 1, %bb1 ], [ 1, %bb1 ]

  %tmp2 = phi i32 [ 2, %bb1 ], [ 2, %bb1 ], [ 5, %bb2 ], [ 2, %bb1 ]
  br label %exit

exit:
  ret void
}


define void @test2(i32 %mode) {

  br i1 undef, label %1, label %._crit_edge


  switch i32 %mode, label %33 [
    i32 2, label %2
    i32 3, label %3
    i32 4, label %4
    i32 5, label %5
    i32 6, label %6
    i32 7, label %7
    i32 8, label %8
    i32 9, label %9
    i32 10, label %10
    i32 11, label %14
    i32 12, label %18
    i32 13, label %22
    i32 14, label %26
    i32 15, label %27
    i32 16, label %34
    i32 17, label %34
    i32 18, label %34
    i32 19, label %34
    i32 22, label %34
    i32 20, label %31
    i32 21, label %32
  ]


  br label %34


  br label %34


  br label %34


  br label %34


  br label %34


  br label %34


  br label %34


  br label %34


  br i1 undef, label %11, label %12


  br label %13


  br label %13


  br label %34


  br i1 undef, label %15, label %16


  br label %17


  br label %17


  br label %34


  br i1 undef, label %19, label %20


  br label %21


  br label %21


  br label %34


  br i1 undef, label %23, label %24


  br label %25


  br label %25


  br label %34


  br label %34


  br i1 undef, label %28, label %29


  br label %30


  br label %30


  br label %34


  br label %34


  br label %34


  br label %34


  %o.0 = phi float [ undef, %33 ], [ undef, %32 ], [ undef, %31 ], [ undef, %30 ], [ undef, %26 ], [ undef, %25 ], [ undef, %21 ], [ undef, %17 ], [ undef, %13 ], [ undef, %9 ], [ undef, %8 ], [ undef, %7 ], [ undef, %6 ], [ undef, %5 ], [ undef, %4 ], [ undef, %3 ], [ undef, %2 ], [ undef, %1 ], [ undef, %1 ], [ undef, %1 ], [ undef, %1 ], [ undef, %1 ]
  br label %._crit_edge

._crit_edge:                                      
  ret void
}
