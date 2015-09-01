


define i32 @test1(i32 %x) nounwind readnone ssp {
entry:


  %0 = shl i32 %x, 5                              
  %1 = or i32 %0, 3                               
  ret i32 %1
}

define i64 @test2(i8 %A, i8 %B) nounwind {






  %C = zext i8 %A to i64                          
  %D = shl i64 %C, 4                              
  %E = and i64 %D, 48                             
  %F = zext i8 %B to i64                          
  %G = lshr i64 %F, 4                             
  %H = or i64 %G, %E                              
  ret i64 %H
}



define void @test3(i32 %x, i32* %P) nounwind readnone ssp {
entry:



  %0 = shl i32 %x, 5
  %1 = or i32 %0, 3
  store i32 %1, i32* %P
  ret void
}

define i32 @test4(i32 %a, i32 %b) nounwind readnone ssp {
entry:
  %and = and i32 %a, 6
  %and2 = and i32 %b, 16
  %or = or i32 %and2, %and
  ret i32 %or


}

define void @test5(i32 %a, i32 %b, i32* nocapture %P) nounwind ssp {
entry:
  %and = and i32 %a, 6
  %and2 = and i32 %b, 16
  %or = or i32 %and2, %and
  store i32 %or, i32* %P, align 4
  ret void


}
