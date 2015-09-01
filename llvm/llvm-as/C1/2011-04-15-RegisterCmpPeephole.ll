






define i32 @f(i32 %a, i32 %b) nounwind ssp {
entry:
  %add = add nsw i32 %b, %a
  %cmp = icmp eq i32 %add, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void (...) @h(i32 %a, i32 %b) nounwind
  br label %if.end

if.end:                                           
  ret i32 %add
}






define i32 @g(i32 %a, i32 %b) nounwind ssp {
entry:
  %add = or i32 %b, %a
  %cmp = icmp eq i32 %add, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void (...) @h(i32 %a, i32 %b) nounwind
  br label %if.end

if.end:                                           
  ret i32 %add
}

declare void @h(...)
