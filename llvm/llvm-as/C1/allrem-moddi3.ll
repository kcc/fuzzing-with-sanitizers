








define i32 @main(i32 %argc, i8** nocapture %argv) nounwind readonly {
entry:
  %conv4 = sext i32 %argc to i64
  %div = srem i64 84, %conv4
  %conv7 = trunc i64 %div to i32
  ret i32 %conv7
}



