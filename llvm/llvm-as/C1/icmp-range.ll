




define i1 @test_nonzero(i32* nocapture readonly %arg) {


  %val = load i32, i32* %arg, !range !0
  %rval = icmp ne i32 %val, 0
  ret i1 %rval
}
define i1 @test_nonzero2(i32* nocapture readonly %arg) {


  %val = load i32, i32* %arg, !range !0
  %rval = icmp eq i32 %val, 0
  ret i1 %rval
}


define i1 @test_nonzero3(i32* nocapture readonly %arg) {



  %val = load i32, i32* %arg, !range !1
  %rval = icmp ne i32 %val, 0
  ret i1 %rval
}


define i1 @test_nonzero4(i8* nocapture readonly %arg) {


  %val = load i8, i8* %arg, !range !2
  %rval = icmp ne i8 %val, 0
  ret i1 %rval
}

define i1 @test_nonzero5(i8* nocapture readonly %arg) {


  %val = load i8, i8* %arg, !range !2
  %rval = icmp ugt i8 %val, 0
  ret i1 %rval
}


define i1 @test_nonzero6(i8* %argw) {


  %val = load i8, i8* %argw, !range !3
  %rval = icmp sgt i8 %val, 0
  ret i1 %rval
}


!0 = !{i32 1, i32 6} 
!1 = !{i32 0, i32 6} 
!2 = !{i8 0, i8 1} 
!3 = !{i8 0, i8 6} 
