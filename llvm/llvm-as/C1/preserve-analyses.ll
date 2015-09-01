




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:64"
target triple = "armv6-apple-darwin9"

@delim1 = external global i32                     
@delim2 = external global i32                     

define i32 @ineqn(i8* %s, i8* %p) nounwind readonly {
entry:
  %0 = load i32, i32* @delim1, align 4                 
  %1 = load i32, i32* @delim2, align 4                 
  br label %bb8.outer

bb:                                               
  %2 = icmp eq i8* %p_addr.0, %s                  
  br i1 %2, label %bb10, label %bb2

bb2:                                              
  %3 = getelementptr inbounds i8, i8* %p_addr.0, i32 1 
  switch i32 %ineq.0.ph, label %bb8.backedge [
    i32 0, label %bb3
    i32 1, label %bb6
  ]

bb8.backedge:                                     
  br label %bb8

bb3:                                              
  %4 = icmp eq i32 %8, %0                         
  br i1 %4, label %bb8.outer.loopexit, label %bb5

bb5:                                              
  br i1 %6, label %bb6, label %bb8.backedge

bb6:                                              
  %5 = icmp eq i32 %8, %1                         
  br i1 %5, label %bb7, label %bb8.backedge

bb7:                                              
  %.lcssa1 = phi i8* [ %3, %bb6 ]                 
  br label %bb8.outer.backedge

bb8.outer.backedge:                               
  %.lcssa2 = phi i8* [ %.lcssa1, %bb7 ], [ %.lcssa, %bb8.outer.loopexit ] 
  %ineq.0.ph.be = phi i32 [ 0, %bb7 ], [ 1, %bb8.outer.loopexit ] 
  br label %bb8.outer

bb8.outer.loopexit:                               
  %.lcssa = phi i8* [ %3, %bb3 ]                  
  br label %bb8.outer.backedge

bb8.outer:                                        
  %ineq.0.ph = phi i32 [ 0, %entry ], [ %ineq.0.ph.be, %bb8.outer.backedge ] 
  %p_addr.0.ph = phi i8* [ %p, %entry ], [ %.lcssa2, %bb8.outer.backedge ] 
  %6 = icmp eq i32 %ineq.0.ph, 1                  
  br label %bb8

bb8:                                              
  %p_addr.0 = phi i8* [ %p_addr.0.ph, %bb8.outer ], [ %3, %bb8.backedge ] 
  %7 = load i8, i8* %p_addr.0, align 1                
  %8 = sext i8 %7 to i32                          
  %9 = icmp eq i8 %7, 0                           
  br i1 %9, label %bb10, label %bb

bb10:                                             
  %.0 = phi i32 [ %ineq.0.ph, %bb ], [ 0, %bb8 ]  
  ret i32 %.0
}




define void @simplified_ineqn() nounwind readonly {
entry:
  br label %bb8.outer

bb8.outer:                                        
  %x = phi i32 [ 0, %entry ], [ 0, %bb6 ], [ 1, %bb2 ] 
  br i1 undef, label %return, label %bb2

bb2:                                              
  switch i32 %x, label %bb6 [
    i32 0, label %bb8.outer
  ]

bb6:                                              
  br i1 undef, label %bb8.outer, label %bb2

return:                                             
  ret void
}




define void @pnp_check_irq() nounwind noredzone {
entry:
  %conv56 = trunc i64 undef to i32                
  br label %while.cond.i

while.cond.i:                                     
  %call.i25 = call i8* @pci_get_device() nounwind noredzone 
  br i1 undef, label %if.then65, label %while.body.i

while.body.i:                                     
  br i1 undef, label %if.then31.i.i, label %while.cond.i.backedge

while.cond.i.backedge:                            
  br label %while.cond.i

if.then31.i.i:                                    
  switch i32 %conv56, label %while.cond.i.backedge [
    i32 14, label %if.then42.i.i
    i32 15, label %if.then42.i.i
  ]

if.then42.i.i:                                    
  %call.i25.lcssa48 = phi i8* [ %call.i25, %if.then31.i.i ], [ %call.i25, %if.then31.i.i ] 
  unreachable

if.then65:                                        
  unreachable
}

declare i8* @pci_get_device() noredzone
