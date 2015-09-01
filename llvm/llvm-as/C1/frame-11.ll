



declare i8 *@llvm.stacksave()
declare void @llvm.stackrestore(i8 *)



define void @f1(i32 %count1, i32 %count2) {







  %src = call i8 *@llvm.stacksave()
  %array1 = alloca i8, i32 %count1
  store volatile i8 0, i8 *%array1
  call void @llvm.stackrestore(i8 *%src)
  %array2 = alloca i8, i32 %count2
  store volatile i8 0, i8 *%array2
  ret void
}
