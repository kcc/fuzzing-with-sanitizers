

%struct.S2 = type {}

@g_128 = external global %struct.S2, align 1
@g_106 = external global i16, align 2

define void @int328(i16 signext %p_82) noreturn nounwind ssp {
entry:
  %tobool3 = icmp eq i16 %p_82, 0
  br label %for.cond.outer

for.cond.outer:                                   
  br label %for.cond

for.cond.loopexit:                                
  br label %for.cond.outer

for.cond.loopexit4.us-lcssa:                      
  br label %for.cond.loopexit4

for.cond.loopexit4:                               
  br label %for.cond.backedge

for.cond:                                         
  br i1 %tobool3, label %for.cond.split.us, label %for.cond.for.cond.split_crit_edge

for.cond.for.cond.split_crit_edge:                
  br label %lbl_133

for.cond.split.us:                                
  br label %lbl_133.us

lbl_133.us:                                       
  br i1 undef, label %if.else14.us-lcssa.us, label %if.then.us

lbl_134.us:                                       
  br i1 icmp eq (i16 ptrtoint (%struct.S2* @g_128 to i16), i16 0), label %for.cond9.preheader.us-lcssa.us, label %lbl_133.us

if.then.us:                                       
  br i1 true, label %for.cond.loopexit4.us-lcssa.us, label %lbl_134.us

if.else14.us-lcssa.us:                            
  br label %if.else14

for.cond9.preheader.us-lcssa.us:                  
  br label %for.cond9.preheader

for.cond.loopexit4.us-lcssa.us:                   
  br label %for.cond.loopexit4

lbl_133:                                          
  %l_109.0 = phi i16 [ 0, %for.cond.for.cond.split_crit_edge ], [ ptrtoint (%struct.S2* @g_128 to i16), %lbl_134 ]
  %tobool = icmp eq i32 undef, 0
  br i1 %tobool, label %if.else14.us-lcssa, label %if.then

if.then:                                          
  br i1 false, label %for.cond.loopexit4.us-lcssa, label %lbl_134

lbl_134:                                          
  br i1 icmp eq (i16 ptrtoint (%struct.S2* @g_128 to i16), i16 0), label %for.cond9.preheader.us-lcssa, label %lbl_133

for.cond9.preheader.us-lcssa:                     
  br label %for.cond9.preheader

for.cond9.preheader:                              
  br i1 undef, label %bb.nph, label %for.cond.loopexit

bb.nph:                                           
  br label %for.cond.loopexit

if.else14.us-lcssa:                               
  br label %if.else14

if.else14:                                        
  %l_109.0.lcssa = phi i16 [ %l_109.0, %if.else14.us-lcssa ], [ 0, %if.else14.us-lcssa.us ]
  store i16 undef, i16* @g_106, align 2
  br label %for.cond.backedge

for.cond.backedge:                                
  br label %for.cond
}
