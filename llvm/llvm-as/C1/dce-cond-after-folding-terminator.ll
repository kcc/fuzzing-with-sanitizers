

define void @test_br(i32 %x) {
entry:



  %cmp = icmp eq i32 %x, 10
  br i1 %cmp, label %if.then, label %if.then

if.then:                                          
  br label %if.end

if.end:                                           
  ret void
}

define void @test_switch(i32 %x) nounwind {
entry:



  %rem = srem i32 %x, 3
  switch i32 %rem, label %sw.bb [
    i32 1, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.bb:                                            
  br label %sw.epilog

sw.epilog:                                        
  ret void
}

define void @test_indirectbr(i32 %x) {
entry:







  %label = bitcast i8* blockaddress(@test_indirectbr, %L1) to i8*
  indirectbr i8* %label, [label %L1, label %L2]

L1:                                               
  ret void
L2:                                               
  ret void
}
