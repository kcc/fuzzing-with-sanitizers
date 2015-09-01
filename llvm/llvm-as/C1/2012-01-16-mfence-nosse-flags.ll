


@ptr = external global i8*

define void @baz() nounwind ssp {
entry:
  %0 = load i8*, i8** @ptr, align 4
  %cmp = icmp eq i8* %0, null
  fence seq_cst
  br i1 %cmp, label %if.then, label %if.else







if.then:                                          
  tail call void bitcast (void (...)* @foo to void ()*)() nounwind
  br label %if.end

if.else:                                          
  tail call void bitcast (void (...)* @bar to void ()*)() nounwind
  br label %if.end

if.end:                                           
  ret void
}

declare void @foo(...)

declare void @bar(...)
