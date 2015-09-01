



@g1src = global i8 1
@g1dst = global i8 1
@g2src = global i16 2
@g2dst = global i16 2
@g3 = global i32 3
@g4 = global i64 4
@g5src = external global fp128, align 16
@g5dst = external global fp128, align 16


define void @f1(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  store i8 %val, i8 *%ptr2
  ret void
}


define void @f2(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %ext = zext i8 %val to i32
  %trunc = trunc i32 %ext to i8
  store i8 %trunc, i8 *%ptr2
  ret void
}


define void @f3(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %ext = zext i8 %val to i64
  %trunc = trunc i64 %ext to i8
  store i8 %trunc, i8 *%ptr2
  ret void
}


define void @f4(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %ext = sext i8 %val to i32
  %trunc = trunc i32 %ext to i8
  store i8 %trunc, i8 *%ptr2
  ret void
}


define void @f5(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %ext = sext i8 %val to i64
  %trunc = trunc i64 %ext to i8
  store i8 %trunc, i8 *%ptr2
  ret void
}


define void @f6(i16 *%ptr1) {



  %ptr2 = getelementptr i16, i16 *%ptr1, i64 1
  %val = load i16 , i16 *%ptr1
  store i16 %val, i16 *%ptr2
  ret void
}


define void @f7(i16 *%ptr1) {



  %ptr2 = getelementptr i16, i16 *%ptr1, i64 1
  %val = load i16 , i16 *%ptr1
  %ext = zext i16 %val to i32
  %trunc = trunc i32 %ext to i16
  store i16 %trunc, i16 *%ptr2
  ret void
}


define void @f8(i16 *%ptr1) {



  %ptr2 = getelementptr i16, i16 *%ptr1, i64 1
  %val = load i16 , i16 *%ptr1
  %ext = zext i16 %val to i64
  %trunc = trunc i64 %ext to i16
  store i16 %trunc, i16 *%ptr2
  ret void
}


define void @f9(i16 *%ptr1) {



  %ptr2 = getelementptr i16, i16 *%ptr1, i64 1
  %val = load i16 , i16 *%ptr1
  %ext = sext i16 %val to i32
  %trunc = trunc i32 %ext to i16
  store i16 %trunc, i16 *%ptr2
  ret void
}


define void @f10(i16 *%ptr1) {



  %ptr2 = getelementptr i16, i16 *%ptr1, i64 1
  %val = load i16 , i16 *%ptr1
  %ext = sext i16 %val to i64
  %trunc = trunc i64 %ext to i16
  store i16 %trunc, i16 *%ptr2
  ret void
}


define void @f11(i32 *%ptr1) {



  %ptr2 = getelementptr i32, i32 *%ptr1, i64 1
  %val = load i32 , i32 *%ptr1
  store i32 %val, i32 *%ptr2
  ret void
}


define void @f12(i32 *%ptr1) {



  %ptr2 = getelementptr i32, i32 *%ptr1, i64 1
  %val = load i32 , i32 *%ptr1
  %ext = zext i32 %val to i64
  %trunc = trunc i64 %ext to i32
  store i32 %trunc, i32 *%ptr2
  ret void
}


define void @f13(i32 *%ptr1) {



  %ptr2 = getelementptr i32, i32 *%ptr1, i64 1
  %val = load i32 , i32 *%ptr1
  %ext = sext i32 %val to i64
  %trunc = trunc i64 %ext to i32
  store i32 %trunc, i32 *%ptr2
  ret void
}


define void @f14(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load i64 , i64 *%ptr1
  store i64 %val, i64 *%ptr2
  ret void
}


define void @f15(float *%ptr1) {



  %ptr2 = getelementptr float, float *%ptr1, i64 1
  %val = load float , float *%ptr1
  store float %val, float *%ptr2
  ret void
}


define void @f16(double *%ptr1) {



  %ptr2 = getelementptr double, double *%ptr1, i64 1
  %val = load double , double *%ptr1
  store double %val, double *%ptr2
  ret void
}


define void @f17(fp128 *%ptr1) {



  %ptr2 = getelementptr fp128, fp128 *%ptr1, i64 1
  %val = load fp128 , fp128 *%ptr1
  store fp128 %val, fp128 *%ptr2
  ret void
}


define void @f18(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load volatile i64 , i64 *%ptr1
  store i64 %val, i64 *%ptr2
  ret void
}


define void @f19(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load i64 , i64 *%ptr1
  store volatile i64 %val, i64 *%ptr2
  ret void
}




define void @f20(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1
  store i64 %val, i64 *%ptr2
  ret void
}


define void @f21(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1, align 2
  store i64 %val, i64 *%ptr2, align 2
  ret void
}


define void @f22(i64 %base) {



  %add = add i64 %base, 1
  %ptr1 = inttoptr i64 %base to i64 *
  %ptr2 = inttoptr i64 %add to i64 *
  %val = load i64 , i64 *%ptr1, align 1
  store i64 %val, i64 *%ptr2, align 1
  ret void
}


define void @f23(i8 *%ptr) {





  %val = load i8 , i8 *@g1src
  store i8 %val, i8 *@g1dst
  ret void
}


define void @f24(i16 *%ptr) {




  %val = load i16 , i16 *@g2src
  store i16 %val, i16 *@g2dst
  ret void
}


define void @f25(i32 *%ptr) {




  %val = load i32 , i32 *@g3
  store i32 %val, i32 *%ptr
  ret void
}


define void @f26(i32 *%ptr) {




  %val = load i32 , i32 *%ptr
  store i32 %val, i32 *@g3
  ret void
}


define void @f27(i64 *%ptr) {




  %val = load i64 , i64 *@g4
  store i64 %val, i64 *%ptr
  ret void
}


define void @f28(i64 *%ptr) {




  %val = load i64 , i64 *%ptr
  store i64 %val, i64 *@g4
  ret void
}


define void @f29(fp128 *%ptr) {





  %val = load fp128 , fp128 *@g5src, align 16
  store fp128 %val, fp128 *@g5dst, align 16
  ret void
}


define void @f30(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load i64 , i64 *%ptr1, align 1
  store i64 %val, i64 *%ptr2, align 1
  ret void
}


define void @f31(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1, align 2, !tbaa !1
  store i64 %val, i64 *%ptr2, align 2, !tbaa !2
  ret void
}


define void @f32(i64 *%ptr1, i64 *%ptr2) {



  %val = load i64 , i64 *%ptr1, align 2, !tbaa !1
  store i64 %val, i64 *%ptr2, align 2, !tbaa !1
  ret void
}

!0 = !{ !"root" }
!1 = !{ !3, !3, i64 0 }
!2 = !{ !4, !4, i64 0 }
!3 = !{ !"set1", !0 }
!4 = !{ !"set2", !0 }
