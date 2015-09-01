


define fastcc i8* @S_scan_str(i8* %start, i32 %keep_quoted, i32 %keep_delims) nounwind ssp {
entry:
  switch i8 undef, label %bb6 [
    i8 9, label %bb5
    i8 32, label %bb5
    i8 10, label %bb5
    i8 13, label %bb5
    i8 12, label %bb5
  ]

bb5:                                              
  br label %bb6

bb6:                                              
  br i1 undef, label %bb7, label %bb9

bb7:                                              
  unreachable

bb9:                                              
  %0 = load i8, i8* undef, align 1                    
  br i1 undef, label %bb12, label %bb10

bb10:                                             
  br i1 undef, label %bb12, label %bb11

bb11:                                             
  unreachable

bb12:                                             
  br i1 undef, label %bb13, label %bb14

bb13:                                             
  store i8 %0, i8* undef, align 1
  %1 = zext i8 %0 to i32                          
  br label %bb18

bb14:                                             
  br label %bb18

bb18:                                             
  %termcode.0 = phi i32 [ %1, %bb13 ], [ undef, %bb14 ] 
  %2 = icmp eq i8 %0, 0                           
  br i1 %2, label %bb21, label %bb19

bb19:                                             
  br i1 undef, label %bb21, label %bb20

bb20:                                             
  br label %bb21

bb21:                                             
  %termcode.1 = phi i32 [ %termcode.0, %bb18 ], [ %termcode.0, %bb19 ], [ undef, %bb20 ] 
  unreachable
}
