





define i32 @far() nounwind uwtable {
entry:


  tail call void @foo() nounwind
  ret i32 0
}

declare void @foo()
