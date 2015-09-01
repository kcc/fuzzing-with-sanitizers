




define i32 @load_w(i32* nocapture %a, i32 %n, i32 %m) nounwind {

entry:
  %tmp = add i32 %n, %m
  %scevgep9 = getelementptr i32, i32* %a, i32 %tmp
  %val = load i32, i32* %scevgep9, align 4
  ret i32 %val
}



define i16 @load_uh(i16* nocapture %a, i32 %n, i32 %m) nounwind {

entry:
  %tmp = add i32 %n, %m
  %scevgep9 = getelementptr i16, i16* %a, i32 %tmp
  %val = load i16, i16* %scevgep9, align 2
  ret i16 %val
}



define i32 @load_h(i16* nocapture %a, i32 %n, i32 %m) nounwind {

entry:
  %tmp = add i32 %n, %m
  %scevgep9 = getelementptr i16, i16* %a, i32 %tmp
  %val = load i16, i16* %scevgep9, align 2
  %conv = sext i16 %val to i32
  ret i32 %conv
}



define i8 @load_ub(i8* nocapture %a, i32 %n, i32 %m) nounwind {

entry:
  %tmp = add i32 %n, %m
  %scevgep9 = getelementptr i8, i8* %a, i32 %tmp
  %val = load i8, i8* %scevgep9, align 1
  ret i8 %val
}



define i32 @foo_2(i8* nocapture %a, i32 %n, i32 %m) nounwind {

entry:
  %tmp = add i32 %n, %m
  %scevgep9 = getelementptr i8, i8* %a, i32 %tmp
  %val = load i8, i8* %scevgep9, align 1
  %conv = sext i8 %val to i32
  ret i32 %conv
}



define i64 @load_d(i64* nocapture %a, i32 %n, i32 %m) nounwind {

entry:
  %tmp = add i32 %n, %m
  %scevgep9 = getelementptr i64, i64* %a, i32 %tmp
  %val = load i64, i64* %scevgep9, align 8
  ret i64 %val
}
