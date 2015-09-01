


define i32 @test(i32 %command) {
entry:
  br label %tailrecurse

tailrecurse:                                      
  br i1 undef, label %if.then, label %tailrecurse

if.then:                                          
  switch i32 %command, label %sw.bb [
    i32 2, label %land.lhs.true
    i32 0, label %land.lhs.true
  ]

land.lhs.true:                                    
  br i1 undef, label %sw.bb, label %if.then14

if.then14:                                        
  switch i32 %command, label %tailrecurse [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            
  unreachable
}
