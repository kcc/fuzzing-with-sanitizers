

define fastcc void @foo() nounwind {
BB:
  br label %BB1

BB1:                                              
  br label %BB4

BB2:                                              
  %tmp = bitcast i32 undef to i32                 
  br label %BB4

BB4:                                              
  %tmp5 = phi i32 [ undef, %BB1 ], [ %tmp, %BB2 ] 
  br i1 false, label %BB8, label %BB2

BB8:                                              
  %tmp7 = bitcast i32 %tmp5 to i32                
  br i1 false, label %BB9, label %BB13

BB9:                                              
  %tmp10 = phi i32 [ %tmp11, %BB12 ], [ %tmp7, %BB8 ] 
  %tmp11 = add i32 %tmp10, 1                      
  br label %BB12

BB12:                                             
  br i1 false, label %BB9, label %BB17

BB13:                                             
  %tmp14 = phi i32 [ %tmp16, %BB15 ], [ %tmp7, %BB8 ] 
  br label %BB15

BB15:                                             
  %tmp16 = add i32 %tmp14, -1                     
  br i1 false, label %BB13, label %BB18

BB17:                                             
  br label %BB19

BB18:                                             
  br label %BB19

BB19:                                             
  %tmp20 = phi i32 [ %tmp10, %BB17 ], [ undef, %BB18 ] 
  br label %BB1
}
