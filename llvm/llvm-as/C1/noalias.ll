

define i32 @test1(i32* %p, i32* %q) {




  %a = load i32, i32* %p, !noalias !0
  %b = load i32, i32* %p
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test2(i32* %p, i32* %q) {



  %a = load i32, i32* %p, !alias.scope !0
  %b = load i32, i32* %p, !alias.scope !0
  %c = add i32 %a, %b
  ret i32 %c
}





define i32 @test3(i32* %p, i32* %q) {



  %a = load i32, i32* %p, !alias.scope !1
  %b = load i32, i32* %p, !alias.scope !2
  %c = add i32 %a, %b
  ret i32 %c
}

declare i32 @foo(i32*) readonly

!0 = !{!0}
!1 = !{!1}
!2 = !{!0, !1}

