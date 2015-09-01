




















































































define i32 @novla_nodynamicrealign_call(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6, i32 %i7, i32 %i8, i32 %i9, i32 %i10, double %d1, double %d2, double %d3, double %d4, double %d5, double %d6, double %d7, double %d8, double %d9, double %d10) #0 {
entry:
  %l1 = alloca i32, align 4
  %conv = fptosi double %d10 to i32
  %add = add nsw i32 %conv, %i10
  %l1.0.l1.0. = load volatile i32, i32* %l1, align 4
  %add1 = add nsw i32 %add, %l1.0.l1.0.
  %call = tail call i32 @g()
  %add2 = add nsw i32 %add1, %call
  ret i32 %add2
}

























declare i32 @g() #0


define i32 @novla_nodynamicrealign_nocall(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6, i32 %i7, i32 %i8, i32 %i9, i32 %i10, double %d1, double %d2, double %d3, double %d4, double %d5, double %d6, double %d7, double %d8, double %d9, double %d10) #1 {
entry:
  %l1 = alloca i32, align 4
  %conv = fptosi double %d10 to i32
  %add = add nsw i32 %conv, %i10
  %l1.0.l1.0. = load volatile i32, i32* %l1, align 4
  %add1 = add nsw i32 %add, %l1.0.l1.0.
  ret i32 %add1
}













define i32 @novla_dynamicrealign_call(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6, i32 %i7, i32 %i8, i32 %i9, i32 %i10, double %d1, double %d2, double %d3, double %d4, double %d5, double %d6, double %d7, double %d8, double %d9, double %d10) #0 {
entry:
  %l1 = alloca i32, align 128
  %conv = fptosi double %d10 to i32
  %add = add nsw i32 %conv, %i10
  %l1.0.l1.0. = load volatile i32, i32* %l1, align 128
  %add1 = add nsw i32 %add, %l1.0.l1.0.
  %call = tail call i32 @g()
  %add2 = add nsw i32 %add1, %call
  ret i32 %add2
}
































define i32 @novla_dynamicrealign_nocall(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6, i32 %i7, i32 %i8, i32 %i9, i32 %i10, double %d1, double %d2, double %d3, double %d4, double %d5, double %d6, double %d7, double %d8, double %d9, double %d10) #1 {
entry:
  %l1 = alloca i32, align 128
  %conv = fptosi double %d10 to i32
  %add = add nsw i32 %conv, %i10
  %l1.0.l1.0. = load volatile i32, i32* %l1, align 128
  %add1 = add nsw i32 %add, %l1.0.l1.0.
  ret i32 %add1
}




















define i32 @vla_nodynamicrealign_call(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6, i32 %i7, i32 %i8, i32 %i9, i32 %i10, double %d1, double %d2, double %d3, double %d4, double %d5, double %d6, double %d7, double %d8, double %d9, double %d10) #0 {
entry:
  %l1 = alloca i32, align 4
  %0 = zext i32 %i1 to i64
  %vla = alloca i32, i64 %0, align 4
  %conv = fptosi double %d10 to i32
  %add = add nsw i32 %conv, %i10
  %l1.0.l1.0. = load volatile i32, i32* %l1, align 4
  %add1 = add nsw i32 %add, %l1.0.l1.0.
  %call = tail call i32 @g()
  %add2 = add nsw i32 %add1, %call
  %1 = load volatile i32, i32* %vla, align 4, !tbaa !1
  %add3 = add nsw i32 %add2, %1
  ret i32 %add3
}










































define i32 @vla_nodynamicrealign_nocall(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6, i32 %i7, i32 %i8, i32 %i9, i32 %i10, double %d1, double %d2, double %d3, double %d4, double %d5, double %d6, double %d7, double %d8, double %d9, double %d10) #1 {
entry:
  %l1 = alloca i32, align 4
  %0 = zext i32 %i1 to i64
  %vla = alloca i32, i64 %0, align 4
  %conv = fptosi double %d10 to i32
  %add = add nsw i32 %conv, %i10
  %l1.0.l1.0. = load volatile i32, i32* %l1, align 4
  %add1 = add nsw i32 %add, %l1.0.l1.0.
  %1 = load volatile i32, i32* %vla, align 4, !tbaa !1
  %add2 = add nsw i32 %add1, %1
  ret i32 %add2
}































define i32 @vla_dynamicrealign_call(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6, i32 %i7, i32 %i8, i32 %i9, i32 %i10, double %d1, double %d2, double %d3, double %d4, double %d5, double %d6, double %d7, double %d8, double %d9, double %d10) #0 {
entry:
  %l1 = alloca i32, align 128
  %0 = zext i32 %i1 to i64
  %vla = alloca i32, i64 %0, align 4
  %conv = fptosi double %d10 to i32
  %add = add nsw i32 %conv, %i10
  %l1.0.l1.0. = load volatile i32, i32* %l1, align 128
  %add1 = add nsw i32 %add, %l1.0.l1.0.
  %call = tail call i32 @g()
  %add2 = add nsw i32 %add1, %call
  %1 = load volatile i32, i32* %vla, align 4, !tbaa !1
  %add3 = add nsw i32 %add2, %1
  ret i32 %add3
}


















































define i32 @vla_dynamicrealign_nocall(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6, i32 %i7, i32 %i8, i32 %i9, i32 %i10, double %d1, double %d2, double %d3, double %d4, double %d5, double %d6, double %d7, double %d8, double %d9, double %d10) #1 {
entry:
  %l1 = alloca i32, align 128
  %0 = zext i32 %i1 to i64
  %vla = alloca i32, i64 %0, align 4
  %conv = fptosi double %d10 to i32
  %add = add nsw i32 %conv, %i10
  %l1.0.l1.0. = load volatile i32, i32* %l1, align 128
  %add1 = add nsw i32 %add, %l1.0.l1.0.
  %1 = load volatile i32, i32* %vla, align 4, !tbaa !1
  %add2 = add nsw i32 %add1, %1
  ret i32 %add2
}






































define i32 @vla_dynamicrealign_nocall_large_align(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6, i32 %i7, i32 %i8, i32 %i9, i32 %i10, double %d1, double %d2, double %d3, double %d4, double %d5, double %d6, double %d7, double %d8, double %d9, double %d10) #1 {
entry:
  %l1 = alloca i32, align 32768
  %0 = zext i32 %i1 to i64
  %vla = alloca i32, i64 %0, align 4
  %conv = fptosi double %d10 to i32
  %add = add nsw i32 %conv, %i10
  %l1.0.l1.0. = load volatile i32, i32* %l1, align 32768
  %add1 = add nsw i32 %add, %l1.0.l1.0.
  %1 = load volatile i32, i32* %vla, align 4, !tbaa !1
  %add2 = add nsw i32 %add1, %1
  ret i32 %add2
}





































define void @realign_conditional(i1 %b) {
entry:
  br i1 %b, label %bb0, label %bb1

bb0:
  %MyAlloca = alloca i8, i64 64, align 32
  br label %bb1

bb1:
  ret void
}













define void @realign_conditional2(i1 %b) {
entry:
  %tmp = alloca i8, i32 4
  br i1 %b, label %bb0, label %bb1

bb0:
  %MyAlloca = alloca i8, i64 64, align 32
  br label %bb1

bb1:
  ret void
}













attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
