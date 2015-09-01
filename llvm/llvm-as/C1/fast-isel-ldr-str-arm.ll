

define i32 @t1(i32* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i32, i32* %ptr, i32 1
  %0 = load i32, i32* %add.ptr, align 4

  ret i32 %0
}

define i32 @t2(i32* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i32, i32* %ptr, i32 63
  %0 = load i32, i32* %add.ptr, align 4

  ret i32 %0
}

define zeroext i16 @t3(i16* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %ptr, i16 1
  %0 = load i16, i16* %add.ptr, align 4

  ret i16 %0
}

define zeroext i16 @t4(i16* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i16, i16* %ptr, i16 63
  %0 = load i16, i16* %add.ptr, align 4

  ret i16 %0
}

define zeroext i8 @t5(i8* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %ptr, i8 1
  %0 = load i8, i8* %add.ptr, align 4

  ret i8 %0
}

define zeroext i8 @t6(i8* nocapture %ptr) nounwind readonly {
entry:

  %add.ptr = getelementptr inbounds i8, i8* %ptr, i8 63
  %0 = load i8, i8* %add.ptr, align 4

  ret i8 %0
}
