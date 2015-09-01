

define i32 @test(i32 %arg) #0 {









  switch i32 %arg, label %5 [
    i32 1, label %1
    i32 2, label %2
    i32 3, label %3
    i32 4, label %4
  ]


  br label %2


  %res.0 = phi i32 [ 1, %0 ], [ 2, %1 ]
  br label %3


  %res.1 = phi i32 [ 0, %0 ], [ %res.0, %2 ]
  %phitmp = add nsw i32 %res.1, 2
  br label %4


  %res.2 = phi i32 [ 1, %0 ], [ %phitmp, %3 ]
  br label %5


  %res.3 = phi i32 [ 0, %0 ], [ %res.2, %4 ]
  %6 = add nsw i32 %res.3, 1
  ret i32 %6
}
