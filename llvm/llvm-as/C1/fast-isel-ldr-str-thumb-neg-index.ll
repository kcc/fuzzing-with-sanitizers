

define i32 @t1(i32* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i32, i32* %ptr, i32 -1
  %0 = load i32, i32* %add.ptr, align 4

  ret i32 %0
}

define i32 @t2(i32* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i32, i32* %ptr, i32 -63
  %0 = load i32, i32* %add.ptr, align 4

  ret i32 %0
}

define i32 @t3(i32* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i32, i32* %ptr, i32 -64
  %0 = load i32, i32* %add.ptr, align 4

  ret i32 %0
}

define zeroext i16 @t4(i16* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %ptr, i32 -1
  %0 = load i16, i16* %add.ptr, align 2

  ret i16 %0
}

define zeroext i16 @t5(i16* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %ptr, i32 -127
  %0 = load i16, i16* %add.ptr, align 2

  ret i16 %0
}

define zeroext i16 @t6(i16* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %ptr, i32 -128
  %0 = load i16, i16* %add.ptr, align 2

  ret i16 %0
}

define zeroext i8 @t7(i8* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %ptr, i32 -1
  %0 = load i8, i8* %add.ptr, align 1

  ret i8 %0
}

define zeroext i8 @t8(i8* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %ptr, i32 -255
  %0 = load i8, i8* %add.ptr, align 1

  ret i8 %0
}

define zeroext i8 @t9(i8* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %ptr, i32 -256
  %0 = load i8, i8* %add.ptr, align 1

  ret i8 %0
}

define void @t10(i32* nocapture %ptr) nounwind {
entry:

  %add.ptr = getelementptr inbounds i32, i32* %ptr, i32 -1
  store i32 0, i32* %add.ptr, align 4

  ret void
}

define void @t11(i32* nocapture %ptr) nounwind {
entry:

  %add.ptr = getelementptr inbounds i32, i32* %ptr, i32 -63
  store i32 0, i32* %add.ptr, align 4

  ret void
}

define void @t12(i32* nocapture %ptr) nounwind {
entry:

  %add.ptr = getelementptr inbounds i32, i32* %ptr, i32 -64
  store i32 0, i32* %add.ptr, align 4

  ret void
}

define void @t13(i16* nocapture %ptr) nounwind {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %ptr, i32 -1
  store i16 0, i16* %add.ptr, align 2

  ret void
}

define void @t14(i16* nocapture %ptr) nounwind {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %ptr, i32 -127
  store i16 0, i16* %add.ptr, align 2

  ret void
}

define void @t15(i16* nocapture %ptr) nounwind {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %ptr, i32 -128
  store i16 0, i16* %add.ptr, align 2

  ret void
}

define void @t16(i8* nocapture %ptr) nounwind {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %ptr, i32 -1
  store i8 0, i8* %add.ptr, align 1

  ret void
}

define void @t17(i8* nocapture %ptr) nounwind {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %ptr, i32 -255
  store i8 0, i8* %add.ptr, align 1

  ret void
}

define void @t18(i8* nocapture %ptr) nounwind {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %ptr, i32 -256
  store i8 0, i8* %add.ptr, align 1

  ret void
}
