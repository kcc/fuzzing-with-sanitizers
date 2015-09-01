







@a = global i32* null, align 8
@e = global i32** @a, align 8
@g = global i32 0, align 4
@c = global i64 0, align 8
@d = global i8 0, align 1

define internal fastcc void @fn(i32* nocapture readonly %p1, i64* nocapture readonly %p2) {
entry:
  %0 = load i64, i64* %p2, align 8, !tbaa !1
  %conv = trunc i64 %0 to i32
  %1 = load i32, i32* %p1, align 4, !tbaa !5
  %conv1 = trunc i32 %1 to i8
  store i8 %conv1, i8* @d, align 1, !tbaa !7
  ret void
}

define i32 @main() {
entry:




  %0 = load i32**, i32*** @e, align 8, !tbaa !8
  store i32* @g, i32** %0, align 8, !tbaa !8
  %1 = load i32*, i32** @a, align 8, !tbaa !8
  store i32 1, i32* %1, align 4, !tbaa !5
  call fastcc void @fn(i32* @g, i64* @c)

  ret i32 0
}

!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !3, i64 0}




