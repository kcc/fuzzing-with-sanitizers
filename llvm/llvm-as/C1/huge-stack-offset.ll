





define void @foo() nounwind {













  %1 = alloca [5000000000 x i8], align 16
  %2 = getelementptr inbounds [5000000000 x i8], [5000000000 x i8]* %1, i32 0, i32 0
  call void @bar(i8* %2)
  ret void
}



define i32 @foo2() nounwind {







  %1 = alloca [5000000000 x i8], align 16
  %2 = getelementptr inbounds [5000000000 x i8], [5000000000 x i8]* %1, i32 0, i32 0
  call void @bar(i8* %2)
  ret i32 10
}



define i32 @foo3(i32 inreg %x) nounwind {







  %1 = alloca [5000000000 x i8], align 16
  %2 = getelementptr inbounds [5000000000 x i8], [5000000000 x i8]* %1, i32 0, i32 0
  call void @bar(i8* %2)
  ret i32 %x
}

declare void @bar(i8*)
