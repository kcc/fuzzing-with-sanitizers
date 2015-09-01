



define i32 @test1(i32* %p) {



  %1 = getelementptr inbounds i32, i32* %p, i32 1
  %2 = getelementptr inbounds i32, i32* %p, i32 2
  %3 = getelementptr inbounds i32, i32* %p, i32 3
  %4 = getelementptr inbounds i32, i32* %p, i32 4


  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4

  %9 = add nsw i32 %5, %6
  %10 = add nsw i32 %9, %7
  %11 = add nsw i32 %10, %8
  ret i32 %11
}


define i32 @test2(i32* %p) {





  %1 = getelementptr inbounds i32, i32* %p, i32 2
  %2 = getelementptr inbounds i32, i32* %p, i32 3
  %3 = getelementptr inbounds i32, i32* %p, i32 4
  %4 = getelementptr inbounds i32, i32* %p, i32 5


  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4

  %9 = add nsw i32 %5, %6
  %10 = add nsw i32 %9, %7
  %11 = add nsw i32 %10, %8
  ret i32 %11
}
