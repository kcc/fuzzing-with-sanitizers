
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define void @foo(i32 signext %a, i32 signext %b) #0 {
entry:
  %cmp = icmp sgt i32 %a, 5
  %cmp1 = icmp slt i32 %b, 3
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else







if.then:                                          
  tail call void bitcast (void (...)* @bar to void ()*)() #0
  br label %if.end

if.else:                                          
  tail call void bitcast (void (...)* @car to void ()*)() #0
  br label %if.end

if.end:                                           
  ret void
}

declare void @bar(...)

declare void @car(...)

attributes #0 = { nounwind }

