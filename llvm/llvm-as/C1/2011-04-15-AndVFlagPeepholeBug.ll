






define i32 @f(i32 %a, i32 %b) nounwind ssp {
entry:
  %and = and i32 %b, %a
  %cmp = icmp slt i32 %and, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void (...) @g(i32 %a, i32 %b) nounwind
  br label %if.end

if.end:                                           
  ret i32 %and
}

declare void @g(...)
