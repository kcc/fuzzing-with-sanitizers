

define i32 @test1(i32* %p) {



  %a = load i32, i32* %p, !range !0
  %b = load i32, i32* %p, !range !0
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test2(i32* %p) {




  %a = load i32, i32* %p, !range !0
  %b = load i32, i32* %p
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test3(i32* %p) {



  %a = load i32, i32* %p, !range !0
  %b = load i32, i32* %p, !range !1
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test4(i32* %p) {



  %a = load i32, i32* %p, !range !0
  %b = load i32, i32* %p, !range !2
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test5(i32* %p) {



  %a = load i32, i32* %p, !range !3
  %b = load i32, i32* %p, !range !4
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test6(i32* %p) {



  %a = load i32, i32* %p, !range !5
  %b = load i32, i32* %p, !range !6
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test7(i32* %p) {



  %a = load i32, i32* %p, !range !7
  %b = load i32, i32* %p, !range !8
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test8(i32* %p) {




  %a = load i32, i32* %p, !range !9
  %b = load i32, i32* %p, !range !10
  %c = add i32 %a, %b
  ret i32 %c
}







!0 = !{i32 0, i32 2}
!1 = !{i32 3, i32 5}
!2 = !{i32 2, i32 5}
!3 = !{i32 -3, i32 -2}
!4 = !{i32 1, i32 2}
!5 = !{i32 10, i32 1}
!6 = !{i32 12, i32 13}
!7 = !{i32 1, i32 2, i32 3, i32 4}
!8 = !{i32 5, i32 1}
!9 = !{i32 1, i32 5}
!10 = !{i32 5, i32 1}
