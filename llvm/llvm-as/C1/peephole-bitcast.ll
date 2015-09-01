









define void @t(float %x) nounwind ssp {
entry:



  %0 = bitcast float %x to i32
  %cmp = icmp ult i32 %0, 2139095039
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  tail call void @doSomething(float %x) nounwind
  br label %if.end

if.end:                                           
  ret void
}

declare void @doSomething(float)
