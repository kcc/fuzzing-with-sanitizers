



target triple = "thumbv7-apple-macosx10.6.7"

define i32 @f(i32* %x) nounwind ssp {
  %y = getelementptr inbounds i32, i32* %x, i32 5000
  %tmp103 = load i32, i32* %y, align 4
  ret i32 %tmp103
}
