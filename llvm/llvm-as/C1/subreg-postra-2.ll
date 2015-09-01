
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define void @jbd2_journal_commit_transaction() #0 {
entry:
  br i1 undef, label %do.body, label %if.then5

if.then5:                                         
  unreachable

do.body:                                          
  br i1 undef, label %do.body.i, label %trace_jbd2_start_commit.exit

do.body.i:                                        
  unreachable

trace_jbd2_start_commit.exit:                     
  br i1 undef, label %do.body.i1116, label %trace_jbd2_commit_locking.exit

do.body.i1116:                                    
  unreachable

trace_jbd2_commit_locking.exit:                   
  br i1 undef, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 
  unreachable

while.end:                                        
  br i1 undef, label %spin_unlock.exit1146, label %if.then.i.i.i.i1144

if.then.i.i.i.i1144:                              
  unreachable

spin_unlock.exit1146:                             
  br i1 undef, label %spin_unlock.exit1154, label %if.then.i.i.i.i1152

if.then.i.i.i.i1152:                              
  unreachable

spin_unlock.exit1154:                             
  br i1 undef, label %do.body.i1159, label %trace_jbd2_commit_flushing.exit

do.body.i1159:                                    
  br i1 undef, label %if.end.i1166, label %do.body5.i1165

do.body5.i1165:                                   
  unreachable

if.end.i1166:                                     
  unreachable

trace_jbd2_commit_flushing.exit:                  
  br i1 undef, label %for.end.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 
  unreachable

for.end.i:                                        
  br i1 undef, label %journal_submit_data_buffers.exit, label %if.then.i.i.i.i31.i

if.then.i.i.i.i31.i:                              
  br label %journal_submit_data_buffers.exit

journal_submit_data_buffers.exit:                 
  br i1 undef, label %if.end103, label %if.then102

if.then102:                                       
  unreachable

if.end103:                                        
  br i1 undef, label %do.body.i1182, label %trace_jbd2_commit_logging.exit

do.body.i1182:                                    
  br i1 undef, label %if.end.i1189, label %do.body5.i1188

do.body5.i1188:                                   
  br i1 undef, label %if.end.i1189, label %do.body5.i1188

if.end.i1189:                                     
  unreachable

trace_jbd2_commit_logging.exit:                   
  br label %while.cond129.outer1451

while.cond129.outer1451:                          
  br label %while.cond129

while.cond129:                                    
  br i1 undef, label %while.end246, label %if.then135

if.then135:                                       
  br i1 undef, label %start_journal_io, label %while.cond129

start_journal_io:                                 
  br label %while.cond129.outer1451

while.end246:                                     
  br i1 undef, label %for.end.i1287, label %for.body.i1277

for.body.i1277:                                   
  unreachable

for.end.i1287:                                    
  br i1 undef, label %journal_finish_inode_data_buffers.exit, label %if.then.i.i.i.i84.i

if.then.i.i.i.i84.i:                              
  unreachable

journal_finish_inode_data_buffers.exit:           
  br i1 undef, label %if.end256, label %if.then249

if.then249:                                       
  unreachable

if.end256:                                        
  br label %while.body318

while.body318:                                    
  br i1 undef, label %wait_on_buffer.exit, label %if.then.i1296

if.then.i1296:                                    
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              
  br i1 undef, label %do.body378, label %while.body318

do.body378:                                       
  br i1 undef, label %while.end418, label %while.body392.lr.ph

while.body392.lr.ph:                              
  br label %while.body392

while.body392:                                    
  %0 = load i8*, i8** undef, align 8
  %add.ptr399 = getelementptr inbounds i8, i8* %0, i64 -72
  %b_state.i.i1314 = bitcast i8* %add.ptr399 to i64*
  %tobool.i1316 = icmp eq i64 undef, 0
  br i1 %tobool.i1316, label %wait_on_buffer.exit1319, label %if.then.i1317

if.then.i1317:                                    
  unreachable

wait_on_buffer.exit1319:                          
  %1 = load volatile i64, i64* %b_state.i.i1314, align 8
  %conv.i.i1322 = and i64 %1, 1
  %lnot404 = icmp eq i64 %conv.i.i1322, 0
  %.err.4 = select i1 %lnot404, i32 -5, i32 undef
  %2 = call i64 asm sideeffect "1:.long 0x7c0000a8 $| ((($0) & 0x1f) << 21) $| (((0) & 0x1f) << 16) $| ((($3) & 0x1f) << 11) $| (((0) & 0x1) << 0) \0Aandc $0,$0,$2\0Astdcx. $0,0,$3\0Abne- 1b\0A", "=&r,=*m,r,r,*m,~{cc},~{memory}"(i64* %b_state.i.i1314, i64 262144, i64* %b_state.i.i1314, i64* %b_state.i.i1314) #0
  store i8* %0, i8** undef, align 8
  %cmp.i1312 = icmp eq i32* undef, undef
  br i1 %cmp.i1312, label %while.end418, label %while.body392

while.end418:                                     
  %err.4.lcssa = phi i32 [ undef, %do.body378 ], [ %.err.4, %wait_on_buffer.exit1319 ]
  %tobool419 = icmp eq i32 %err.4.lcssa, 0
  br i1 %tobool419, label %if.end421, label %if.then420







if.then420:                                       
  unreachable

if.end421:                                        
  unreachable
}

attributes #0 = { nounwind }

