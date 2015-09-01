



@g1src = global i8 1
@g1dst = global i8 1
@g2src = global i16 2
@g2dst = global i16 2


define void @f1(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %old = load i8 , i8 *%ptr2
  %and = and i8 %val, %old
  store i8 %and, i8 *%ptr2
  ret void
}


define void @f2(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %old = load i8 , i8 *%ptr2
  %and = and i8 %old, %val
  store i8 %and, i8 *%ptr2
  ret void
}



define void @f3(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %extval = zext i8 %val to i32
  %old = load i8 , i8 *%ptr2
  %extold = sext i8 %old to i32
  %and = and i32 %extval, %extold
  %trunc = trunc i32 %and to i8
  store i8 %trunc, i8 *%ptr2
  ret void
}


define void @f4(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %extval = sext i8 %val to i32
  %old = load i8 , i8 *%ptr2
  %extold = zext i8 %old to i32
  %and = and i32 %extval, %extold
  %trunc = trunc i32 %and to i8
  store i8 %trunc, i8 *%ptr2
  ret void
}


define void @f5(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %extval = sext i8 %val to i32
  %old = load i8 , i8 *%ptr2
  %extold = sext i8 %old to i32
  %and = and i32 %extval, %extold
  %trunc = trunc i32 %and to i8
  store i8 %trunc, i8 *%ptr2
  ret void
}


define void @f6(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %extval = zext i8 %val to i32
  %old = load i8 , i8 *%ptr2
  %extold = zext i8 %old to i32
  %and = and i32 %extval, %extold
  %trunc = trunc i32 %and to i8
  store i8 %trunc, i8 *%ptr2
  ret void
}



define void @f7(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %extval = sext i8 %val to i64
  %old = load i8 , i8 *%ptr2
  %extold = zext i8 %old to i64
  %and = and i64 %extval, %extold
  %trunc = trunc i64 %and to i8
  store i8 %trunc, i8 *%ptr2
  ret void
}


define void @f8(i16 *%ptr1) {



  %ptr2 = getelementptr i16, i16 *%ptr1, i64 1
  %val = load i16 , i16 *%ptr1
  %old = load i16 , i16 *%ptr2
  %and = and i16 %val, %old
  store i16 %and, i16 *%ptr2
  ret void
}


define void @f9(i16 *%ptr1) {



  %ptr2 = getelementptr i16, i16 *%ptr1, i64 1
  %val = load i16 , i16 *%ptr1
  %extval = zext i16 %val to i32
  %old = load i16 , i16 *%ptr2
  %extold = sext i16 %old to i32
  %and = and i32 %extval, %extold
  %trunc = trunc i32 %and to i16
  store i16 %trunc, i16 *%ptr2
  ret void
}


define void @f10(i16 *%ptr1) {



  %ptr2 = getelementptr i16, i16 *%ptr1, i64 1
  %val = load i16 , i16 *%ptr1
  %extval = sext i16 %val to i64
  %old = load i16 , i16 *%ptr2
  %extold = zext i16 %old to i64
  %and = and i64 %extval, %extold
  %trunc = trunc i64 %and to i16
  store i16 %trunc, i16 *%ptr2
  ret void
}


define void @f11(i32 *%ptr1) {



  %ptr2 = getelementptr i32, i32 *%ptr1, i64 1
  %val = load i32 , i32 *%ptr1
  %old = load i32 , i32 *%ptr2
  %and = and i32 %old, %val
  store i32 %and, i32 *%ptr2
  ret void
}


define void @f12(i32 *%ptr1) {



  %ptr2 = getelementptr i32, i32 *%ptr1, i64 1
  %val = load i32 , i32 *%ptr1
  %extval = sext i32 %val to i64
  %old = load i32 , i32 *%ptr2
  %extold = zext i32 %old to i64
  %and = and i64 %extval, %extold
  %trunc = trunc i64 %and to i32
  store i32 %trunc, i32 *%ptr2
  ret void
}


define void @f13(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load i64 , i64 *%ptr1
  %old = load i64 , i64 *%ptr2
  %and = and i64 %old, %val
  store i64 %and, i64 *%ptr2
  ret void
}


define void @f14(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load volatile i64 , i64 *%ptr1
  %old = load i64 , i64 *%ptr2
  %and = and i64 %old, %val
  store i64 %and, i64 *%ptr2
  ret void
}


define void @f15(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load i64 , i64 *%ptr1
  %old = load volatile i64 , i64 *%ptr2
  %and = and i64 %old, %val
  store i64 %and, i64 *%ptr2
  ret void
}


define void @f16(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load i64 , i64 *%ptr1
  %old = load i64 , i64 *%ptr2
  %and = and i64 %old, %val
  store volatile i64 %and, i64 *%ptr2
  ret void
}




define void @f17(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1
  %old = load i64 , i64 *%ptr2
  %and = and i64 %old, %val
  store i64 %and, i64 *%ptr2
  ret void
}


define void @f18(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1, align 2
  %old = load i64 , i64 *%ptr2
  %and = and i64 %old, %val
  store i64 %and, i64 *%ptr2
  ret void
}


define void @f19(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1, align 2
  %old = load i64 , i64 *%ptr2
  %and = and i64 %val, %old
  store i64 %and, i64 *%ptr2
  ret void
}


define void @f20(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1
  %old = load i64 , i64 *%ptr2, align 2
  %and = and i64 %val, %old
  store i64 %and, i64 *%ptr2, align 2
  ret void
}


define void @f21(i64 %base) {



  %add = add i64 %base, 1
  %ptr1 = inttoptr i64 %base to i64 *
  %ptr2 = inttoptr i64 %add to i64 *
  %val = load i64 , i64 *%ptr1
  %old = load i64 , i64 *%ptr2, align 1
  %and = and i64 %old, %val
  store i64 %and, i64 *%ptr2, align 1
  ret void
}


define void @f22(i8 *%ptr) {





  %val = load i8 , i8 *@g1src
  %old = load i8 , i8 *@g1dst
  %and = and i8 %val, %old
  store i8 %and, i8 *@g1dst
  ret void
}


define void @f23(i16 *%ptr) {





  %val = load i16 , i16 *@g2src
  %old = load i16 , i16 *@g2dst
  %and = and i16 %val, %old
  store i16 %and, i16 *@g2dst
  ret void
}


define void @f24(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load i64 , i64 *%ptr1, align 1
  %old = load i64 , i64 *%ptr2, align 1
  %and = and i64 %old, %val
  store i64 %and, i64 *%ptr2, align 1
  ret void
}


define void @f25(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1, align 2, !tbaa !3
  %old = load i64 , i64 *%ptr2, align 2, !tbaa !4
  %and = and i64 %old, %val
  store i64 %and, i64 *%ptr2, align 2, !tbaa !4
  ret void
}


define void @f26(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1, align 2, !tbaa !3
  %old = load i64 , i64 *%ptr2, align 2, !tbaa !3
  %and = and i64 %old, %val
  store i64 %and, i64 *%ptr2, align 2, !tbaa !3
  ret void
}

!0 = !{ !"root" }
!1 = !{ !"set1", !0 }
!2 = !{ !"set2", !0 }
!3 = !{ !1, !1, i64 0}
!4 = !{ !2, !2, i64 0}
