




define i32 @f6(i32 %p1, i32 %p2, i32 %p3, i32 %p4, i32 %p5, i32 %p6) nounwind readnone optsize {
entry:



  %add = add nsw i32 %p6, %p5
  ret i32 %add
}

define x86_64_win64cc i32 @f7(i32 %p1, i32 %p2, i32 %p3, i32 %p4, i32 %p5, i32 %p6) nounwind readnone optsize {
entry:




  %add = add nsw i32 %p6, %p5
  ret i32 %add
}



define x86_64_sysvcc i32 @f8(i32 %p1, i32 %p2, i32 %p3, i32 %p4, i32 %p5, i32 %p6) nounwind readnone optsize {
entry:


  %add = add nsw i32 %p6, %p5
  ret i32 %add
}
