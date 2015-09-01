



define i32 @t(i32 %a, i32 %b) nounwind ssp {
entry:












  %0 = and i32 %a, 16384
  %1 = icmp ne i32 %0, 0
  %2 = and i32 %b, 16384
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %1, %3
  br i1 %4, label %bb1, label %bb

bb:                                               
  %5 = tail call i32 (...) @foo() nounwind       
  ret i32 %5

bb1:                                              
  %6 = tail call i32 (...) @bar() nounwind       
  ret i32 %6
}

declare i32 @foo(...)

declare i32 @bar(...)

define i32 @t2(i32 %x, i32 %y) nounwind ssp {















entry:
  %0 = icmp eq i32 %x, 0                          
  %1 = icmp eq i32 %y, 0                          
  %2 = xor i1 %1, %0                              
  br i1 %2, label %bb, label %return

bb:                                               
  %3 = tail call i32 (...) @foo() nounwind       
  ret i32 undef

return:                                           
  ret i32 undef
}
