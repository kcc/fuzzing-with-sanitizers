

define i32 @test1(i8* %p, i8* %q) {




  %a = call i32 @foo(i8* %p), !tbaa !0
  %b = call i32 @foo(i8* %p)
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test2(i8* %p, i8* %q) {



  %a = call i32 @foo(i8* %p), !tbaa !0
  %b = call i32 @foo(i8* %p), !tbaa !0
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test3(i8* %p, i8* %q) {



  %a = call i32 @foo(i8* %p), !tbaa !3
  %b = call i32 @foo(i8* %p), !tbaa !3
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test4(i8* %p, i8* %q) {



  %a = call i32 @foo(i8* %p), !tbaa !1
  %b = call i32 @foo(i8* %p), !tbaa !0
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test5(i8* %p, i8* %q) {



  %a = call i32 @foo(i8* %p), !tbaa !0
  %b = call i32 @foo(i8* %p), !tbaa !1
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test6(i8* %p, i8* %q) {



  %a = call i32 @foo(i8* %p), !tbaa !0
  %b = call i32 @foo(i8* %p), !tbaa !3
  %c = add i32 %a, %b
  ret i32 %c
}

define i32 @test7(i8* %p, i8* %q) {




  %a = call i32 @foo(i8* %p), !tbaa !4
  %b = call i32 @foo(i8* %p), !tbaa !3
  %c = add i32 %a, %b
  ret i32 %c
}



define i32 @test8(i32* %p, i32* %q) {






  %a = load i32, i32* %q, !tbaa !10
  store i32 15, i32* %p
  %b = load i32, i32* %q, !tbaa !10
  %c = sub i32 %a, %b
  ret i32 %c
}
define i32 @test9(i32* %p, i32* %q) {






  %a = load i32, i32* %q, !tbaa !10
  call void @clobber()
  %b = load i32, i32* %q, !tbaa !10
  %c = sub i32 %a, %b
  ret i32 %c
}


declare void @clobber()
declare i32 @foo(i8*) readonly







!0 = !{!5, !5, i64 0}
!1 = !{!6, !6, i64 0}
!2 = !{!"tbaa root", null}
!3 = !{!7, !7, i64 0}
!4 = !{!8, !8, i64 0}
!5 = !{!"C", !6}
!6 = !{!"A", !2}
!7 = !{!"B", !6}
!8 = !{!"another root", null}



!9 = !{!"yet another root"}
!10 = !{!"node", !9, i64 1}

