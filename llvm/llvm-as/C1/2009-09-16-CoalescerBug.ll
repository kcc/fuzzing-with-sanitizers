


%0 = type { i32, i32, i32, i32 }

@boot_cpu_id = external global i32                
@cpu_logical = common global i32 0, align 4       

define void @topo_probe_0xb() nounwind ssp {
entry:
  br label %for.cond

for.cond:                                         
  %0 = phi i32 [ 0, %entry ], [ %inc40, %for.inc38 ] 
  %cmp = icmp slt i32 %0, 3                       
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         
  %1 = tail call %0 asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,{cx},~{dirflag},~{fpsr},~{flags}"(i32 11, i32 %0) nounwind 
  %asmresult.i = extractvalue %0 %1, 0            
  %asmresult10.i = extractvalue %0 %1, 2          
  %and = and i32 %asmresult.i, 31                 
  %shr42 = lshr i32 %asmresult10.i, 8             
  %and12 = and i32 %shr42, 255                    
  %cmp14 = icmp eq i32 %and12, 0                  
  br i1 %cmp14, label %for.end41, label %lor.lhs.false

lor.lhs.false:                                    
  %asmresult9.i = extractvalue %0 %1, 1           
  %and7 = and i32 %asmresult9.i, 65535            
  %cmp16 = icmp eq i32 %and7, 0                   
  br i1 %cmp16, label %for.end41, label %for.cond17.preheader

for.cond17.preheader:                             
  %tmp24 = load i32, i32* @boot_cpu_id                 
  %shr26 = ashr i32 %tmp24, %and                  
  br label %for.body20

for.body20:                                       
  %2 = phi i32 [ 0, %for.cond17.preheader ], [ %inc32, %for.body20 ] 
  %cnt.143 = phi i32 [ 0, %for.cond17.preheader ], [ %inc.cnt.1, %for.body20 ] 
  %shr23 = ashr i32 %2, %and                      
  %cmp27 = icmp eq i32 %shr23, %shr26             
  %inc = zext i1 %cmp27 to i32                    
  %inc.cnt.1 = add i32 %inc, %cnt.143             
  %inc32 = add nsw i32 %2, 1                      
  %exitcond = icmp eq i32 %inc32, 255             
  br i1 %exitcond, label %for.end, label %for.body20

for.end:                                          
  %cmp34 = icmp eq i32 %and12, 1                  
  br i1 %cmp34, label %if.then35, label %for.inc38

if.then35:                                        
  store i32 %inc.cnt.1, i32* @cpu_logical
  br label %for.inc38

for.inc38:                                        
  %inc40 = add nsw i32 %0, 1                      
  br label %for.cond

for.end41:                                        
  ret void
}
