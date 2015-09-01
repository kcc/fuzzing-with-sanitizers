

define i1 @main(i16 %a) {

entry:
  br label %body

body:
  %dec2 = phi i16 [ %a, %entry ], [ %dec, %cond ]
  %dec = add i16 %dec2, -1
  %conv2 = zext i16 %dec2 to i32
  %conv = zext i16 %dec to i32




  br label %cond

cond:
  br i1 false, label %body, label %exit

exit:
  %ret = icmp ne i32 %conv, 0
  ret i1 %ret
}
