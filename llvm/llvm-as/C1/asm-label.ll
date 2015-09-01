








define void @foo()  {
entry:
  br i1 undef, label %land.lhs.true, label %if.end11

land.lhs.true:                                    
  br i1 undef, label %if.then, label %if.end11

if.then:                                          
  br i1 undef, label %if.then9, label %if.end

if.then9:                                         
  br label %cleanup

if.end:                                           
  br label %cleanup

cleanup:                                          
  switch i32 undef, label %default [
    i32 0, label %cleanup.cont
    i32 1, label %if.end11
  ]

cleanup.cont:                                     
  br label %if.end11

if.end11:                                         
  ret void

default:                                          
  br label %if.end11
}
