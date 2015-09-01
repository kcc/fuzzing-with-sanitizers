




define i32 @test1(i1 %C, i32 %A, i32 %B) {

entry:
        %tmp.2 = sdiv i32 %A, %B                
        %tmp.9 = add i32 %B, %A         
        br i1 %C, label %then, label %endif

then:           
        ret i32 %tmp.9

endif:          


        ret i32 %tmp.2
}



define i32 @test2(i32 %x) nounwind ssp {


entry:
  br label %bb

bb:                                               
  %x_addr.17 = phi i32 [ %x, %entry ], [ %x_addr.0, %bb2 ] 
  %i.06 = phi i32 [ 0, %entry ], [ %4, %bb2 ]     
  %0 = add nsw i32 %x_addr.17, 1                  
  %1 = sdiv i32 %0, %x_addr.17                    
  %2 = icmp eq i32 %x_addr.17, 0                  
  br i1 %2, label %bb1, label %bb2

bb1:                                              




  %3 = tail call i32 @bar() nounwind       
  br label %bb2

bb2:                                              
  %x_addr.0 = phi i32 [ %1, %bb1 ], [ %x_addr.17, %bb ] 
  %4 = add nsw i32 %i.06, 1                       
  %exitcond = icmp eq i32 %4, 1000000             
  br i1 %exitcond, label %bb4, label %bb

bb4:                                              
  ret i32 %x_addr.0
}

declare i32 @bar()
