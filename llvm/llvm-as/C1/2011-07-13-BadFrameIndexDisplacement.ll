





declare void @bar([39 x i8]*)
define i32 @f(i64 %a, i64 %b) nounwind readnone {
entry:
  %stack_main = alloca [39 x i8]
  call void @bar([39 x i8]* %stack_main)
  %tmp6 = add i64 %a, -2147483647
  %.sum = add i64 %tmp6, %b
  %tmp8 = getelementptr inbounds [39 x i8], [39 x i8]* %stack_main, i64 0, i64 %.sum
  %tmp9 = load i8, i8* %tmp8, align 1
  %tmp10 = sext i8 %tmp9 to i32
  ret i32 %tmp10
}


