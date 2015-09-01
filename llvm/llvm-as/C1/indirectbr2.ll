
@C.0.2070 = private constant [5 x i8*] [i8* blockaddress(@foo, %L1), i8* blockaddress(@foo, %L2), i8* blockaddress(@foo, %L3), i8* blockaddress(@foo, %L4), i8* blockaddress(@foo, %L5)] 

define internal i16 @foo(i16 %i) nounwind {
entry:
  %tmp1 = getelementptr inbounds [5 x i8*], [5 x i8*]* @C.0.2070, i16 0, i16 %i 
  %gotovar.4.0 = load i8*, i8** %tmp1, align 4        

  indirectbr i8* %gotovar.4.0, [label %L5, label %L4, label %L3, label %L2, label %L1]

L5:                                               
  br label %L4

L4:                                               
  %res.0 = phi i16 [ 385, %L5 ], [ 35, %entry ]     
  br label %L3

L3:                                               
  %res.1 = phi i16 [ %res.0, %L4 ], [ 5, %entry ]   
  br label %L2

L2:                                               
  %res.2 = phi i16 [ %res.1, %L3 ], [ 1, %entry ]   
  br label %L1

L1:                                               
  %res.3 = phi i16 [ %res.2, %L2 ], [ 2, %entry ]  
  ret i16 %res.3
}
