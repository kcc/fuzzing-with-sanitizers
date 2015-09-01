



define zeroext i16 @t1(i16* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 -8
  %0 = load i16, i16* %add.ptr, align 2

  ret i16 %0
}

define zeroext i16 @t2(i16* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 -16
  %0 = load i16, i16* %add.ptr, align 2

  ret i16 %0
}

define zeroext i16 @t3(i16* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 -127
  %0 = load i16, i16* %add.ptr, align 2

  ret i16 %0
}

define zeroext i16 @t4(i16* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 -128
  %0 = load i16, i16* %add.ptr, align 2



  ret i16 %0
}

define zeroext i16 @t5(i16* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 8
  %0 = load i16, i16* %add.ptr, align 2

  ret i16 %0
}

define zeroext i16 @t6(i16* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 16
  %0 = load i16, i16* %add.ptr, align 2

  ret i16 %0
}

define zeroext i16 @t7(i16* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 127
  %0 = load i16, i16* %add.ptr, align 2

  ret i16 %0
}

define zeroext i16 @t8(i16* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 128
  %0 = load i16, i16* %add.ptr, align 2


  ret i16 %0
}

define void @t9(i16* nocapture %a) nounwind uwtable ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 -8
  store i16 0, i16* %add.ptr, align 2

  ret void
}



define void @t10(i16* nocapture %a) nounwind uwtable ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 -128
  store i16 0, i16* %add.ptr, align 2



  ret void
}

define void @t11(i16* nocapture %a) nounwind uwtable ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 8
  store i16 0, i16* %add.ptr, align 2

  ret void
}



define void @t12(i16* nocapture %a) nounwind uwtable ssp {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %a, i64 128
  store i16 0, i16* %add.ptr, align 2


  ret void
}

define signext i8 @t13(i8* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %a, i64 -8
  %0 = load i8, i8* %add.ptr, align 2

  ret i8 %0
}

define signext i8 @t14(i8* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %a, i64 -255
  %0 = load i8, i8* %add.ptr, align 2

  ret i8 %0
}

define signext i8 @t15(i8* nocapture %a) nounwind uwtable readonly ssp {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %a, i64 -256
  %0 = load i8, i8* %add.ptr, align 2



  ret i8 %0
}
