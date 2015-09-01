



define void @f(i32 %x, i32 %y) nounwind uwtable ssp {
entry:



  %sub = sub i32 0, %y
  %cmp = icmp eq i32 %x, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @g() nounwind
  br label %if.end

if.end:                                           
  ret void
}

declare void @g()
