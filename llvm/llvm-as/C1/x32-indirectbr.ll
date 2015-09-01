







define i8 @test1() nounwind ssp {
entry:
  %0 = select i1 undef,                           
              i8* blockaddress(@test1, %bb),
              i8* blockaddress(@test1, %bb6)
  indirectbr i8* %0, [label %bb, label %bb6]
bb:                                               
  ret i8 1

bb6:                                              
  ret i8 2
}






