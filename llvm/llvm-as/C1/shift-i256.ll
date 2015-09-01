




define void @shift1(i256 %x, i256 %a, i256* nocapture %r) nounwind readnone {
entry:
	%0 = ashr i256 %x, %a
	store i256 %0, i256* %r
        ret void
}


define i256 @shift2(i256 %c) nounwind
{
  %b = shl i256 1, %c  
  
  
  
  ret i256 %b
}
