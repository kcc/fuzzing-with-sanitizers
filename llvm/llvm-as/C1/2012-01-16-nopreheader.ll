



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0.0"









define void @nopreheader(i8* %end) nounwind {
entry:
  br label %while.cond179

while.cond179:                                    
  %s.1 = phi i8* [ undef, %if.end434 ], [ %incdec.ptr356, %if.end348 ], [ undef, %entry ]
  indirectbr i8* undef, [label %land.rhs184, label %while.end453]

land.rhs184:                                      
  indirectbr i8* undef, [label %while.end453, label %while.cond197]

while.cond197:                                    
  %0 = phi i64 [ %indvar.next11, %land.rhs202 ], [ 0, %land.rhs184 ]
  indirectbr i8* undef, [label %land.rhs202, label %while.end215]

land.rhs202:                                      
  %indvar.next11 = add i64 %0, 1
  indirectbr i8* undef, [label %while.end215, label %while.cond197]

while.end215:                                     
  indirectbr i8* undef, [label %PREMATURE, label %if.end221]

if.end221:                                        
  indirectbr i8* undef, [label %while.cond238.preheader, label %lor.lhs.false227]

lor.lhs.false227:                                 
  indirectbr i8* undef, [label %while.cond238.preheader, label %if.else]

while.cond238.preheader:                          
  %tmp16 = add i64 %0, 2
  indirectbr i8* undef, [label %while.cond238]

while.cond238:                                    
  %1 = phi i64 [ %indvar.next15, %land.rhs243 ], [ 0, %while.cond238.preheader ]
  %tmp36 = add i64 %tmp16, %1
  %s.3 = getelementptr i8, i8* %s.1, i64 %tmp36
  %cmp241 = icmp ult i8* %s.3, %end
  indirectbr i8* undef, [label %land.rhs243, label %while.end256]

land.rhs243:                                      
  %indvar.next15 = add i64 %1, 1
  indirectbr i8* undef, [label %while.end256, label %while.cond238]

while.end256:                                     
  indirectbr i8* undef, [label %PREMATURE]

if.else:                                          
  indirectbr i8* undef, [label %if.then297, label %if.else386]

if.then297:                                       
  indirectbr i8* undef, [label %PREMATURE, label %if.end307]

if.end307:                                        
  indirectbr i8* undef, [label %if.end314, label %FAIL]

if.end314:                                        
  indirectbr i8* undef, [label %if.end340]

if.end340:                                        
  indirectbr i8* undef, [label %PREMATURE, label %if.end348]

if.end348:                                        
  %incdec.ptr356 = getelementptr inbounds i8, i8* undef, i64 2
  indirectbr i8* undef, [label %while.cond179]

if.else386:                                       
  indirectbr i8* undef, [label %while.end453, label %if.end434]

if.end434:                                        
  indirectbr i8* undef, [label %while.cond179]

while.end453:                                     
  indirectbr i8* undef, [label %PREMATURE, label %if.end459]

if.end459:                                        
  indirectbr i8* undef, [label %if.then465, label %FAIL]

if.then465:                                       
  indirectbr i8* undef, [label %return, label %if.then479]

if.then479:                                       
  indirectbr i8* undef, [label %return]

FAIL:                                             
  indirectbr i8* undef, [label %DECL_FAIL]

PREMATURE:                                        
  indirectbr i8* undef, [label %return, label %if.then495]

if.then495:                                       
  indirectbr i8* undef, [label %return]

DECL_FAIL:                                        
  indirectbr i8* undef, [label %return]

return:                                           
  ret void
}
