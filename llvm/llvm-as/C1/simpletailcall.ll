





define void @foo_empty(i32 %h) nounwind {
entry:
  %add = add nsw i32 %h, 3
  %call = tail call i32 bitcast (i32 (...)* @bar_empty to i32 (i32)*)(i32 %add) nounwind
  ret void
}

declare i32 @bar_empty(...)
