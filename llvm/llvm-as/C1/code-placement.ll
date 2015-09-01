



%struct.list_data_s = type { i16, i16 }
%struct.list_head = type { %struct.list_head*, %struct.list_data_s* }

define arm_apcscc %struct.list_head* @t1(%struct.list_head* %list) nounwind {
entry:

  %0 = icmp eq %struct.list_head* %list, null
  br i1 %0, label %bb2, label %bb

bb:




  %list_addr.05 = phi %struct.list_head* [ %2, %bb ], [ %list, %entry ]
  %next.04 = phi %struct.list_head* [ %list_addr.05, %bb ], [ null, %entry ]
  %1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list_addr.05, i32 0, i32 0
  %2 = load %struct.list_head*, %struct.list_head** %1, align 4
  store %struct.list_head* %next.04, %struct.list_head** %1, align 4
  %3 = icmp eq %struct.list_head* %2, null
  br i1 %3, label %bb2, label %bb

bb2:
  %next.0.lcssa = phi %struct.list_head* [ null, %entry ], [ %list_addr.05, %bb ]
  ret %struct.list_head* %next.0.lcssa
}



define i32 @t2(i32 %passes, i32* nocapture %src, i32 %size) nounwind readonly {
entry:


  %0 = icmp eq i32 %passes, 0                     
  br i1 %0, label %bb5, label %bb.nph15


bb1:                                              


  %indvar = phi i32 [ %indvar.next, %bb1 ], [ 0, %bb2.preheader ] 
  %sum.08 = phi i32 [ %2, %bb1 ], [ %sum.110, %bb2.preheader ] 
  %tmp17 = sub i32 %i.07, %indvar                 
  %scevgep = getelementptr i32, i32* %src, i32 %tmp17  
  %1 = load i32, i32* %scevgep, align 4                
  %2 = add nsw i32 %1, %sum.08                    
  %indvar.next = add i32 %indvar, 1               
  %exitcond = icmp eq i32 %indvar.next, %size     
  br i1 %exitcond, label %bb3, label %bb1

bb3:                                              



  %sum.0.lcssa = phi i32 [ %sum.110, %bb2.preheader ], [ %2, %bb1 ] 
  %3 = add i32 %pass.011, 1                       
  %exitcond18 = icmp eq i32 %3, %passes           
  br i1 %exitcond18, label %bb5, label %bb2.preheader

bb.nph15:                                         
  %i.07 = add i32 %size, -1                       
  %4 = icmp sgt i32 %i.07, -1                     
  br label %bb2.preheader

bb2.preheader:                                    
  %pass.011 = phi i32 [ 0, %bb.nph15 ], [ %3, %bb3 ] 
  %sum.110 = phi i32 [ 0, %bb.nph15 ], [ %sum.0.lcssa, %bb3 ] 
  br i1 %4, label %bb1, label %bb3



bb5:                                              
  %sum.1.lcssa = phi i32 [ 0, %entry ], [ %sum.0.lcssa, %bb3 ] 
  ret i32 %sum.1.lcssa
}
