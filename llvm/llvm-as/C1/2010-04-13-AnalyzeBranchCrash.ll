


%0 = type opaque
%1 = type opaque

define void @t(%0* %self, i8* nocapture %_cmd, %1* %scroller, i32 %hitPart, float %multiplier) nounwind optsize ssp {
entry:
  switch i32 %hitPart, label %if.else [
    i32 7, label %if.then
    i32 8, label %if.then
  ]

if.then:                                          
  %tmp69 = load float, float* null, align 4              
  %cmp19 = icmp eq %1* null, %scroller            
  %cond = select i1 %cmp19, float %tmp69, float 0.000000e+00 
  %call36 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*)*)(i8* undef, i8* undef) nounwind optsize 
  br i1 %cmp19, label %cond.true32, label %cond.false39

cond.true32:                                      
  %sroa.store.elt68 = lshr i64 %call36, 32        
  %0 = trunc i64 %sroa.store.elt68 to i32         
  br label %cond.end47

cond.false39:                                     
  %1 = trunc i64 %call36 to i32                   
  br label %cond.end47

cond.end47:                                       
  %cond48.in = phi i32 [ %0, %cond.true32 ], [ %1, %cond.false39 ] 
  %cond48 = bitcast i32 %cond48.in to float       
  %div = fdiv float %cond, undef                  
  %div58 = fdiv float %div, %cond48               
  call void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, float)*)(i8* undef, i8* undef, float %div58) nounwind optsize
  ret void

if.else:                                          
  ret void
}

declare i8* @objc_msgSend(i8*, i8*, ...)
